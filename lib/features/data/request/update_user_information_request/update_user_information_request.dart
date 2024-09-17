import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_information_request.freezed.dart';
part 'update_user_information_request.g.dart';

@freezed
class UpdateUserInformationRequest with _$UpdateUserInformationRequest {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory UpdateUserInformationRequest({
    required bool canPredictDisease,
    required bool canReceiveNoti,
    required bool canAutoControl,
  }) = _UpdateUserInformationRequest;

  factory UpdateUserInformationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserInformationRequestFromJson(json);
}