import 'package:equatable/equatable.dart';
import 'package:smart_garden/features/data/model/conversation_model/conversation_model.dart';
import 'package:smart_garden/features/domain/entity/message_entity.dart';

class ConversationEntity extends Equatable {
  final int id;
  final String kind;
  final String status;
  final int? assignedAgentId;
  final List<ConversationParticipantModel> participants;
  final MessageEntity? lastMessage;
  final int? lastReadMessageId;
  final bool hasUnreadMessages;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ConversationEntity({
    required this.id,
    required this.kind,
    required this.status,
    this.assignedAgentId,
    this.participants = const [],
    this.lastMessage,
    this.lastReadMessageId,
    this.hasUnreadMessages = false,
    this.createdAt,
    this.updatedAt,
  });

  factory ConversationEntity.fromModel(ConversationModel model) {
    return ConversationEntity(
      id: model.id ?? 0,
      kind: model.kind ?? 'support',
      status: model.status ?? 'open',
      assignedAgentId: model.assignedAgentId,
      participants: model.participants,
      lastMessage: model.lastMessage == null
          ? null
          : MessageEntity.fromModel(model.lastMessage!),
      lastReadMessageId: model.lastReadMessageId,
      hasUnreadMessages: model.hasUnreadMessages ?? false,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  ConversationEntity copyWith({bool? hasUnreadMessages}) {
    return ConversationEntity(
      id: id,
      kind: kind,
      status: status,
      assignedAgentId: assignedAgentId,
      participants: participants,
      lastMessage: lastMessage,
      lastReadMessageId: lastReadMessageId,
      hasUnreadMessages: hasUnreadMessages ?? this.hasUnreadMessages,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  @override
  List<Object?> get props => [
    id,
    kind,
    status,
    assignedAgentId,
    participants,
    lastMessage,
    lastReadMessageId,
    hasUnreadMessages,
  ];
}
