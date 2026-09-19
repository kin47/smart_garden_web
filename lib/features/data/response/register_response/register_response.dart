import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.freezed.dart';
part 'register_response.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
abstract class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    String? message,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}