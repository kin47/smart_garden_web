import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_model.freezed.dart';

part 'store_model.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
abstract class StoreModel with _$StoreModel {
  const factory StoreModel({
    int? id,
    String? name,
    String? phoneNumber,
    String? address,
    double? latitude,
    double? longitude,
  }) = _StoreModel;

  factory StoreModel.fromJson(Map<String, dynamic> json) =>
      _$StoreModelFromJson(json);
}
