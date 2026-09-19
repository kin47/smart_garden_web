import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_token_request.freezed.dart';
part 'device_token_request.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
abstract class DeviceTokenRequest with _$DeviceTokenRequest {
  const factory DeviceTokenRequest({
    required String deviceToken,
  }) = _DeviceTokenRequest;

  factory DeviceTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$DeviceTokenRequestFromJson(json);
}