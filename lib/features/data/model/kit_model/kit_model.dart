import 'package:freezed_annotation/freezed_annotation.dart';

part 'kit_model.freezed.dart';
part 'kit_model.g.dart';

@freezed
class KitModel with _$KitModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory KitModel({
    int? id,
    String? name,
    String? password,
    int? numberOfConnections,
  }) = _KitModel;

  factory KitModel.fromJson(Map<String, dynamic> json) =>
      _$KitModelFromJson(json);
}
