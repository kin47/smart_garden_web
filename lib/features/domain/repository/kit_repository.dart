import 'package:dartz/dartz.dart';
import 'package:smart_garden/base/network/errors/error.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';
import 'package:smart_garden/features/domain/entity/base_pagination_response_entity.dart';
import 'package:smart_garden/features/domain/entity/kit_entity.dart';
import 'package:smart_garden/features/domain/entity/user_entity.dart';

abstract class KitRepository {
  Future<Either<BaseError, BasePaginationResponseEntity<KitEntity>>> getKits({
    required PaginationRequest request,
  });

  Future<Either<BaseError, List<UserEntity>>> getUsersInKit({
    required int kitId,
    required PaginationRequest request,
  });

  Future<Either<BaseError, List<UserEntity>>> searchUserForKit({
    required PaginationRequest request,
  });

  Future<Either<BaseError, bool>> deleteUserFromKit({
    required int kitId,
    required int userId,
  });

  Future<Either<BaseError, bool>> addUserToKit({
    required int kitId,
    required int userId,
  });
}
