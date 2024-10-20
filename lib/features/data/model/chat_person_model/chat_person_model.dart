import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_garden/features/domain/enum/sender_enum.dart';

part 'chat_person_model.freezed.dart';
part 'chat_person_model.g.dart';

@freezed
class ChatPersonModel with _$ChatPersonModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChatPersonModel({
    int? userId,
    String? avatar,
    String? username,
    String? lastMessage,
    DateTime? lastMessageTime,
    SenderEnum? sender,
    int? unreadMessageCount,
  }) = _ChatPersonModel;

  factory ChatPersonModel.fromJson(Map<String, dynamic> json) =>
      _$ChatPersonModelFromJson(json);
}
