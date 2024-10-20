import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_and_kit_request.freezed.dart';
part 'user_and_kit_request.g.dart';

@freezed
class UserAndKitRequest with _$UserAndKitRequest {
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  const factory UserAndKitRequest({
    int? userId,
    int? kitId,
  }) = _UserAndKitRequest;

  factory UserAndKitRequest.fromJson(Map<String, dynamic> json) =>
      _$UserAndKitRequestFromJson(json);
}
