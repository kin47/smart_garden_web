import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_garden/common/config/api_config.dart';
import 'package:smart_garden/features/domain/enum/sort_type.dart';
part 'pagination_request.freezed.dart';
part 'pagination_request.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
abstract class PaginationRequest with _$PaginationRequest {
  factory PaginationRequest({
    String? searchKey,
    required int page,
    @Default(ApiConfig.limit) int limit,
    String? orderBy,
    SortType? orderType,
  }) = _PaginationRequest;

  factory PaginationRequest.fromJson(Map<String, dynamic> json) =>
      _$PaginationRequestFromJson(json);
}