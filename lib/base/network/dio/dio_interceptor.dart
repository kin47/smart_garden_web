import 'package:dio/dio.dart';
import 'package:smart_garden/common/constants/auth_constants.dart';
import 'package:smart_garden/common/constants/endpoint_constants.dart';
import 'package:smart_garden/common/config/api_config.dart';
import 'package:smart_garden/common/local_data/shared_pref.dart';
import 'package:smart_garden/common/utils/functions/common_functions.dart';
import 'package:smart_garden/di/di_setup.dart';
import 'package:smart_garden/routes/app_pages.dart';
import 'package:smart_garden/routes/app_pages.gr.dart';

class DioInterceptor extends Interceptor {
  static const _retryKey = 'auth_retry';

  Future<String?>? _refreshFuture;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final isPublicApi = EndpointConstants.publicAPI.any(
      (element) => checkPathMatch(pathPattern: element, urlPath: options.path),
    );
    if (!isPublicApi) {
      final token = await getIt<LocalStorage>().get<String>(
        AuthConstants.token,
      );
      if (token != null && token.isNotEmpty) {
        options.headers[AuthConstants.authorization] = 'Bearer $token';
      }
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final requestOptions = err.requestOptions;
    final isPublicApi = EndpointConstants.publicAPI.any(
      (element) =>
          checkPathMatch(pathPattern: element, urlPath: requestOptions.path),
    );
    if (err.response?.statusCode != 401 ||
        isPublicApi ||
        requestOptions.extra[_retryKey] == true) {
      return handler.next(err);
    }

    final storage = getIt<LocalStorage>();
    final currentToken = await storage.get<String>(AuthConstants.token);
    final requestToken = _accessTokenFrom(requestOptions);
    if (currentToken != null &&
        currentToken.isNotEmpty &&
        requestToken != currentToken) {
      return _retryRequest(requestOptions, currentToken, handler);
    }

    String? refreshedToken;
    try {
      refreshedToken = await _refreshAccessToken(requestOptions);
    } on Exception {
      refreshedToken = null;
    }

    if (refreshedToken == null || refreshedToken.isEmpty) {
      await _redirectToLogin(storage);
      return handler.reject(err);
    }

    return _retryRequest(requestOptions, refreshedToken, handler);
  }

  String? _accessTokenFrom(RequestOptions options) {
    final authorization = options.headers[AuthConstants.authorization];
    if (authorization is String && authorization.startsWith('Bearer ')) {
      return authorization.substring('Bearer '.length);
    }
    return null;
  }

  Future<void> _retryRequest(
    RequestOptions options,
    String token,
    ErrorInterceptorHandler handler,
  ) async {
    options
      ..headers[AuthConstants.authorization] = 'Bearer $token'
      ..extra[_retryKey] = true;
    try {
      final response = await Dio(
        BaseOptions(baseUrl: options.baseUrl),
      ).fetch<Object?>(options);
      handler.resolve(response);
    } on DioException catch (error) {
      if (error.response?.statusCode == 401) {
        await _redirectToLogin(getIt<LocalStorage>());
      }
      handler.reject(error);
    }
  }

  Future<void> _redirectToLogin(LocalStorage storage) async {
    await storage.remove(AuthConstants.token);
    await storage.remove(AuthConstants.refreshToken);
    getIt<AppPages>().replaceAll([const LoginRoute()]);
  }

  Future<String?> _refreshAccessToken(RequestOptions options) {
    return _refreshFuture ??= _performRefresh(options).whenComplete(() {
      _refreshFuture = null;
    });
  }

  Future<String?> _performRefresh(RequestOptions options) async {
    final storage = getIt<LocalStorage>();
    final refreshToken = await storage.get<String>(AuthConstants.refreshToken);
    if (refreshToken == null || refreshToken.isEmpty) {
      return null;
    }

    final response =
        await Dio(
          BaseOptions(
            baseUrl: options.baseUrl,
            connectTimeout: options.connectTimeout,
            receiveTimeout: options.receiveTimeout,
            sendTimeout: options.sendTimeout,
            contentType: Headers.jsonContentType,
          ),
        ).post<dynamic>(
          EndpointConstants.refresh,
          data: {AuthConstants.refreshToken: refreshToken},
          options: Options(
            headers: {'Cookie': '${AuthConstants.refreshToken}=$refreshToken'},
          ),
        );

    final data = response.data;
    if (data is! Map) {
      throw const FormatException('Invalid token refresh response');
    }
    final accessToken = data[ApiConfig.keyAccessToken];
    final rotatedRefreshToken = data[AuthConstants.refreshToken];
    if (accessToken is! String ||
        accessToken.isEmpty ||
        rotatedRefreshToken is! String ||
        rotatedRefreshToken.isEmpty) {
      throw const FormatException('Invalid token refresh response');
    }

    await storage.save(AuthConstants.token, accessToken);
    await storage.save(AuthConstants.refreshToken, rotatedRefreshToken);
    return accessToken;
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    ///valid response
    if (response.statusCode == 200 &&
        response.data != null &&
        response.data is Map &&
        response.data["data"] != null) {
      //if response has any error
      if (response.data["data"] is Map &&
          response.data["data"]["error"] != null) {
        return handler.reject(
          DioException(
            type: DioExceptionType.badResponse,
            requestOptions: response.requestOptions,
            response: response,
          ),
        );
      }
    }
    super.onResponse(response, handler);
  }
}
