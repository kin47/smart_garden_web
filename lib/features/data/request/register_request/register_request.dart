import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request.freezed.dart';
part 'register_request.g.dart';

@freezed
class RegisterRequest with _$RegisterRequest {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RegisterRequest({
    required String email,
    required String password,
    required String phoneNumber,
    required String name,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
}