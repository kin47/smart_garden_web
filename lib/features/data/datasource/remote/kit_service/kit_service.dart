import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smart_garden/base/network/models/base_data.dart';
import 'package:smart_garden/common/constants/endpoint_constants.dart';
import 'package:smart_garden/features/data/model/kit_model/kit_model.dart';
import 'package:smart_garden/features/data/model/user_model/user_model.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';
import 'package:smart_garden/features/data/request/user_and_kit_request/user_and_kit_request.dart';

part 'kit_service.g.dart';

@RestApi()
@Injectable()
abstract class KitService {
  @factoryMethod
  factory KitService(Dio dio) = _KitService;

  @GET(EndpointConstants.kitManagement)
  Future<BaseListData<KitModel>> getKits({
    @Queries() required PaginationRequest request,
  });

  @GET(EndpointConstants.usersInKit)
  Future<BaseListData<UserModel>> getUsersInKit({
    @Path('kitId') required int kitId,
    @Queries() required PaginationRequest request,
  });

  @DELETE(EndpointConstants.usersInKit)
  Future<BaseData> deleteUserFromKit({
    @Path('kitId') required int kitId,
    @Body() required UserAndKitRequest request,
  });
}
