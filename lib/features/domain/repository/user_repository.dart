import 'package:dartz/dartz.dart';
import 'package:smart_garden/base/network/errors/error.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';
import 'package:smart_garden/features/data/request/update_user_information_request/update_user_information_request.dart';
import 'package:smart_garden/features/domain/entity/base_pagination_response_entity.dart';
import 'package:smart_garden/features/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<Either<BaseError, BasePaginationResponseEntity<UserEntity>>> getUsers({
    required PaginationRequest request,
  });

  Future<Either<BaseError, List<UserEntity>>>
      getUsersPaging({
    required PaginationRequest request,
  });

  Future<Either<BaseError, bool>> updateUser({
    required int userId,
    required UpdateUserInformationRequest requestBody,
  });
}
