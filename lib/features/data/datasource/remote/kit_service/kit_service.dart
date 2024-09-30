import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smart_garden/base/network/models/base_data.dart';
import 'package:smart_garden/common/constants/endpoint_constants.dart';
import 'package:smart_garden/features/data/model/kit_model/kit_model.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';

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
}
