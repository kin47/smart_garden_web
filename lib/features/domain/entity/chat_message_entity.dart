import 'package:smart_garden/features/data/model/chat_message_model/chat_message_model.dart';
import 'package:smart_garden/features/domain/enum/sender_enum.dart';

class ChatMessageEntity {
  int? id;
  String message;
  DateTime time;
  SenderEnum sender;
  bool isUserRead;

  ChatMessageEntity({
    this.id,
    required this.message,
    required this.time,
    required this.sender,
    required this.isUserRead,
  });

  factory ChatMessageEntity.fromModel(ChatMessageModel model) {
    return ChatMessageEntity(
      id: model.id ?? 0,
      message: model.message ?? '',
      time: model.time ?? DateTime.now(),
      sender: model.sender ?? SenderEnum.user,
      isUserRead: model.isUserRead ?? false,
    );
  }

  ChatMessageEntity copyWith({
    int? id,
    String? message,
    DateTime? time,
    SenderEnum? sender,
    bool? isUserRead,
  }) {
    return ChatMessageEntity(
      id: id ?? this.id,
      message: message ?? this.message,
      time: time ?? this.time,
      sender: sender ?? this.sender,
      isUserRead: isUserRead ?? this.isUserRead,
    );
  }
}
