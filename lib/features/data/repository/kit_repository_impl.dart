import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/base/network/errors/error.dart';
import 'package:smart_garden/base/network/errors/extension.dart';
import 'package:smart_garden/features/data/datasource/remote/kit_service/kit_service.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';
import 'package:smart_garden/features/data/request/user_and_kit_request/user_and_kit_request.dart';
import 'package:smart_garden/features/domain/entity/base_pagination_response_entity.dart';
import 'package:smart_garden/features/domain/entity/kit_entity.dart';
import 'package:smart_garden/features/domain/entity/user_entity.dart';
import 'package:smart_garden/features/domain/repository/kit_repository.dart';

@Injectable(as: KitRepository)
class KitRepositoryImpl implements KitRepository {
  final KitService _service;

  KitRepositoryImpl(this._service);

  @override
  Future<Either<BaseError, BasePaginationResponseEntity<KitEntity>>> getKits({
    required PaginationRequest request,
  }) async {
    try {
      final res = await _service.getKits(request: request);
      if (res.data == null) {
        return left(BaseError.httpUnknownError('error_system'.tr()));
      }
      return right(
        BasePaginationResponseEntity(
          data: res.data!.map((e) => KitEntity.fromModel(e)).toList(),
          totalPages: res.totalPages ?? 0,
          totalData: res.totalCount ?? 0,
        ),
      );
    } on DioException catch (e) {
      return left(e.baseError);
    }
  }

  @override
  Future<Either<BaseError, List<UserEntity>>> getUsersInKit({
    required int kitId,
    required PaginationRequest request,
  }) async {
    try {
      final res = await _service.getUsersInKit(kitId: kitId, request: request);
      if (res.data == null) {
        return left(BaseError.httpUnknownError('error_system'.tr()));
      }
      return right(res.data!.map((e) => UserEntity.fromModel(e)).toList());
    } on DioException catch (e) {
      return left(e.baseError);
    }
  }

  @override
  Future<Either<BaseError, bool>> deleteUserFromKit({
    required int kitId,
    required int userId,
  }) async {
    try {
      await _service.deleteUserFromKit(
        kitId: kitId,
        request: UserAndKitRequest(userId: userId),
      );
      return right(true);
    } on DioException catch (e) {
      return left(e.baseError);
    }
  }

  @override
  Future<Either<BaseError, List<UserEntity>>> searchUserForKit({
    required PaginationRequest request,
  }) async {
    try {
      final res = await _service.searchUserForKit(request: request);
      if (res.data == null) {
        return left(BaseError.httpUnknownError('error_system'.tr()));
      }
      return right(res.data!.map((e) => UserEntity.fromModel(e)).toList());
    } on DioException catch (e) {
      return left(e.baseError);
    }
  }

  @override
  Future<Either<BaseError, bool>> addUserToKit({
    required int kitId,
    required int userId,
  }) async {
    try {
      await _service.addUserToKit(
        kitId: kitId,
        request: UserAndKitRequest(userId: userId),
      );
      return right(true);
    } on DioException catch (e) {
      return left(e.baseError);
    }
  }
}
