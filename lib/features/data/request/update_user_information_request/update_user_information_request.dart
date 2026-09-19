import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_information_request.freezed.dart';
part 'update_user_information_request.g.dart';

@freezed
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
abstract class UpdateUserInformationRequest with _$UpdateUserInformationRequest {
  const factory UpdateUserInformationRequest({
    required bool canPredictDisease,
    required bool canReceiveNoti,
    required bool canAutoControl,
  }) = _UpdateUserInformationRequest;

  factory UpdateUserInformationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserInformationRequestFromJson(json);
}