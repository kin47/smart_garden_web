import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';

part 'notification_model.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
abstract class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    int? id,
    String? message,
    DateTime? time,
    bool? isRead,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
