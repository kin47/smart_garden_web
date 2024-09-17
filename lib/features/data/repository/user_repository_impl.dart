import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/base/network/errors/error.dart';
import 'package:smart_garden/base/network/errors/extension.dart';
import 'package:smart_garden/features/data/datasource/remote/user_service/user_service.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';
import 'package:smart_garden/features/data/request/update_user_information_request/update_user_information_request.dart';
import 'package:smart_garden/features/domain/entity/base_pagination_response_entity.dart';
import 'package:smart_garden/features/domain/entity/user_entity.dart';
import 'package:smart_garden/features/domain/repository/user_repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserService _service;

  UserRepositoryImpl(this._service);

  @override
  Future<Either<BaseError, BasePaginationResponseEntity<UserEntity>>> getUsers({
    required PaginationRequest request,
  }) async {
    try {
      final res = await _service.getUsers(request: request);
      if (res.data == null) {
        return left(BaseError.httpUnknownError('error_system'.tr()));
      }
      return right(
        BasePaginationResponseEntity(
          data: res.data!.map((e) => UserEntity.fromModel(e)).toList(),
          totalPages: res.totalPages ?? 0,
          totalData: res.totalCount ?? 0,
        ),
      );
    } on DioException catch (e) {
      return left(e.baseError);
    }
  }

  @override
  Future<Either<BaseError, bool>> updateUser({
    required int userId,
    required UpdateUserInformationRequest requestBody,
  }) async {
    try {
      await _service.updateUser(
        userId: userId,
        requestBody: requestBody,
      );
      return right(true);
    } on DioException catch (e) {
      return left(e.baseError);
    }
  }
}
