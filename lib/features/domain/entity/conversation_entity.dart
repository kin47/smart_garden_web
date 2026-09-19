import 'package:equatable/equatable.dart';
import 'package:smart_garden/features/data/model/conversation_model/conversation_model.dart';

class ConversationEntity extends Equatable {
  final int id;
  final String kind;
  final String status;
  final int? assignedAgentId;
  final int? lastReadMessageId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ConversationEntity({
    required this.id,
    required this.kind,
    required this.status,
    this.assignedAgentId,
    this.lastReadMessageId,
    this.createdAt,
    this.updatedAt,
  });

  factory ConversationEntity.fromModel(ConversationModel model) {
    return ConversationEntity(
      id: model.id ?? 0,
      kind: model.kind ?? 'support',
      status: model.status ?? 'open',
      assignedAgentId: model.assignedAgentId,
      lastReadMessageId: model.lastReadMessageId,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  @override
  List<Object?> get props => [
    id,
    kind,
    status,
    assignedAgentId,
    lastReadMessageId,
  ];
}
