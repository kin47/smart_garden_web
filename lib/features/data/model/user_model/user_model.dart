import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
abstract class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    String? email,
    String? name,
    String? phoneNumber,
    String? avatar,
    bool? isAdmin,
    bool? canPredictDisease,
    bool? canReceiveNoti,
    bool? canAutoControl,
    bool? isVerified,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
