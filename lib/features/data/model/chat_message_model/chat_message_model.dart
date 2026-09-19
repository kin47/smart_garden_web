import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_garden/features/domain/enum/sender_enum.dart';

part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
abstract class ChatMessageModel with _$ChatMessageModel {
  const factory ChatMessageModel({
    int? id,
    String? message,
    DateTime? time,
    SenderEnum? sender,
    bool? isUserRead,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}
