// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:event_bus/event_bus.dart' as _i1017;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

import '../common/local_data/secure_storage.dart' as _i646;
import '../common/local_data/shared_pref.dart' as _i1048;
import '../common/logger/logger.dart' as _i574;
import '../common/notification/local_notification_helper.dart' as _i701;
import '../common/notification/push_notification_helper.dart' as _i352;
import '../common/utils/snack_bar/snack_bar_helper.dart' as _i1072;
import '../features/data/datasource/remote/auth_service/auth_service.dart'
    as _i633;
import '../features/data/datasource/remote/device_token_service/device_token_service.dart'
    as _i137;
import '../features/data/datasource/remote/notification_service/notification_service.dart'
    as _i51;
import '../features/data/datasource/remote/store_service/store_service.dart'
    as _i210;
import '../features/data/datasource/remote/weather_service/weather_service.dart'
    as _i258;
import '../features/data/repository/auth_repository_impl.dart' as _i441;
import '../features/data/repository/device_token_repository_impl.dart' as _i899;
import '../features/data/repository/diagnosis_repository_impl.dart' as _i594;
import '../features/data/repository/news_repository_impl.dart' as _i732;
import '../features/data/repository/notification_repository_impl.dart' as _i268;
import '../features/data/repository/store_repository_impl.dart' as _i617;
import '../features/data/repository/weather_repository_impl.dart' as _i736;
import '../features/domain/repository/auth_repository.dart' as _i767;
import '../features/domain/repository/device_token_repository.dart' as _i1032;
import '../features/domain/repository/diagnosis_repository.dart' as _i971;
import '../features/domain/repository/news_repository.dart' as _i454;
import '../features/domain/repository/notification_repository.dart' as _i517;
import '../features/domain/repository/store_repository.dart' as _i178;
import '../features/domain/repository/weather_repository.dart' as _i743;
import '../features/presentation/core/bloc/core_bloc.dart' as _i7;
import '../features/presentation/diagnosis/bloc/diagnosis_bloc.dart' as _i627;
import '../features/presentation/diagnosis_history/bloc/diagnosis_history_bloc.dart'
    as _i1062;
import '../features/presentation/diagnosis_image_input/bloc/diagnosis_image_input_bloc.dart'
    as _i297;
import '../features/presentation/home/bloc/home_bloc.dart' as _i53;
import '../features/presentation/kit_controller/bloc/kit_controller_bloc.dart'
    as _i318;
import '../features/presentation/kit_environment/bloc/kit_environment_bloc.dart'
    as _i861;
import '../features/presentation/login/bloc/login_bloc.dart' as _i689;
import '../features/presentation/my_kit/bloc/my_kit_bloc.dart' as _i382;
import '../features/presentation/notification_list/bloc/notification_list_bloc.dart'
    as _i407;
import '../features/presentation/profile/bloc/profile_bloc.dart' as _i876;
import '../features/presentation/qr_scanner/bloc/qr_scanner_bloc.dart' as _i684;
import '../features/presentation/register/bloc/register_bloc.dart' as _i865;
import '../features/presentation/splash/bloc/splash_bloc.dart' as _i94;
import '../features/presentation/store/bloc/store_bloc.dart' as _i458;
import '../features/presentation/weather/bloc/weather_bloc.dart' as _i737;
import '../routes/app_pages.dart' as _i1068;
import 'app_module.dart' as _i460;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.factory<_i684.QrScannerBloc>(() => _i684.QrScannerBloc());
  gh.factory<_i382.MyKitBloc>(() => _i382.MyKitBloc());
  gh.factory<_i318.KitControllerBloc>(() => _i318.KitControllerBloc());
  gh.factory<_i297.DiagnosisImageInputBloc>(
      () => _i297.DiagnosisImageInputBloc());
  gh.factory<_i861.KitEnvironmentBloc>(() => _i861.KitEnvironmentBloc());
  gh.factory<_i627.DiagnosisBloc>(() => _i627.DiagnosisBloc());
  gh.singleton<_i361.Dio>(() => appModule.dio);
  gh.singleton<_i1017.EventBus>(() => appModule.eventBus);
  gh.singleton<_i558.FlutterSecureStorage>(() => appModule.secureStorage);
  gh.singleton<_i974.Logger>(() => appModule.loggerHelper);
  gh.singleton<_i574.LogUtils>(() => _i574.LogUtils());
  gh.singleton<_i701.LocalNotificationHelper>(
      () => _i701.LocalNotificationHelper());
  gh.singleton<_i352.PushNotificationHelper>(
      () => _i352.PushNotificationHelper());
  gh.singleton<_i1072.SnackBarHelper>(() => _i1072.SnackBarHelper());
  gh.singleton<_i1068.AppPages>(() => _i1068.AppPages());
  gh.factory<_i971.DiagnosisRepository>(() => _i594.DiagnosisRepositoryImpl());
  gh.factory<_i1048.LocalStorage>(() => _i1048.LocalStorageImpl());
  gh.singleton<_i361.Dio>(
    () => appModule.weatherDio,
    instanceName: 'weatherDio',
  );
  gh.factory<_i51.NotificationService>(
      () => _i51.NotificationService(gh<_i361.Dio>()));
  gh.factory<_i210.StoreService>(() => _i210.StoreService(gh<_i361.Dio>()));
  gh.factory<_i137.DeviceTokenService>(
      () => _i137.DeviceTokenService(gh<_i361.Dio>()));
  gh.factory<_i633.AuthService>(() => _i633.AuthService(gh<_i361.Dio>()));
  gh.factory<_i258.WeatherService>(
      () => _i258.WeatherService(gh<_i361.Dio>(instanceName: 'weatherDio')));
  gh.factory<_i454.NewsRepository>(() => _i732.NewsRepositoryImpl());
  gh.factory<_i1062.DiagnosisHistoryBloc>(
      () => _i1062.DiagnosisHistoryBloc(gh<_i971.DiagnosisRepository>()));
  gh.singleton<_i646.SecureStorage>(
      () => _i646.SecureStorage(storage: gh<_i558.FlutterSecureStorage>()));
  gh.factory<_i767.AuthRepository>(
      () => _i441.AuthRepositoryImpl(gh<_i633.AuthService>()));
  gh.factory<_i178.StoreRepository>(
      () => _i617.StoreRepositoryImpl(gh<_i210.StoreService>()));
  gh.factory<_i517.NotificationRepository>(
      () => _i268.NotificationRepositoryImpl(gh<_i51.NotificationService>()));
  gh.factory<_i53.HomeBloc>(() => _i53.HomeBloc(gh<_i454.NewsRepository>()));
  gh.factory<_i94.SplashBloc>(
      () => _i94.SplashBloc(gh<_i767.AuthRepository>()));
  gh.factory<_i865.RegisterBloc>(
      () => _i865.RegisterBloc(gh<_i767.AuthRepository>()));
  gh.factory<_i689.LoginBloc>(
      () => _i689.LoginBloc(gh<_i767.AuthRepository>()));
  gh.factory<_i458.StoreBloc>(
      () => _i458.StoreBloc(gh<_i178.StoreRepository>()));
  gh.factory<_i1032.DeviceTokenRepository>(
      () => _i899.DeviceTokenRepositoryImpl(gh<_i137.DeviceTokenService>()));
  gh.factory<_i876.ProfileBloc>(() => _i876.ProfileBloc(
        gh<_i767.AuthRepository>(),
        gh<_i1032.DeviceTokenRepository>(),
      ));
  gh.factory<_i743.WeatherRepository>(
      () => _i736.WeatherRepositoryImpl(gh<_i258.WeatherService>()));
  gh.factory<_i407.NotificationListBloc>(
      () => _i407.NotificationListBloc(gh<_i517.NotificationRepository>()));
  gh.factory<_i7.CoreBloc>(
      () => _i7.CoreBloc(gh<_i1032.DeviceTokenRepository>()));
  gh.factory<_i737.WeatherBloc>(
      () => _i737.WeatherBloc(gh<_i743.WeatherRepository>()));
  return getIt;
}

class _$AppModule extends _i460.AppModule {}
