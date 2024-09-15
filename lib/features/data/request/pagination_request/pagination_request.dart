import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_garden/common/config/api_config.dart';
import 'package:smart_garden/features/domain/enum/sort_type.dart';
import 'package:smart_garden/features/domain/enum/user_order_by_type.dart';
part 'pagination_request.freezed.dart';
part 'pagination_request.g.dart';

@freezed
class PaginationRequest with _$PaginationRequest {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  factory PaginationRequest({
    String? searchKey,
    required int page,
    @Default(ApiConfig.limit) int limit,
    UserOrderByType? orderBy,
    SortType? orderType,
  }) = _PaginationRequest;

  factory PaginationRequest.fromJson(Map<String, dynamic> json) =>
      _$PaginationRequestFromJson(json);
}