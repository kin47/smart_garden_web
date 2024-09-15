import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smart_garden/base/network/models/base_data.dart';
import 'package:smart_garden/common/constants/endpoint_constants.dart';
import 'package:smart_garden/features/data/model/user_model/user_model.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';

part 'user_service.g.dart';

@RestApi()
@Injectable()
abstract class UserService {
  @factoryMethod
  factory UserService(Dio dio) = _UserService;

  @GET(EndpointConstants.userManagement)
  Future<BaseListData<UserModel>> getUsers({
    @Queries() required PaginationRequest request,
  });
}
