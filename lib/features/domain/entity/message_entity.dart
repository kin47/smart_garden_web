import 'package:equatable/equatable.dart';
import 'package:smart_garden/features/data/model/message_model/message_model.dart';

class MessageEntity extends Equatable {
  final int id;
  final int conversationId;
  final int senderId;
  final String body;
  final String? clientMessageId;
  final DateTime createdAt;

  const MessageEntity({
    required this.id,
    required this.conversationId,
    required this.senderId,
    required this.body,
    this.clientMessageId,
    required this.createdAt,
  });

  factory MessageEntity.fromModel(MessageModel model) {
    return MessageEntity(
      id: model.id ?? 0,
      conversationId: model.conversationId ?? 0,
      senderId: model.senderId ?? 0,
      body: model.body ?? '',
      clientMessageId: model.clientMessageId,
      createdAt: model.createdAt ?? DateTime.now(),
    );
  }

  @override
  List<Object?> get props => [id, conversationId, senderId, clientMessageId];
}
