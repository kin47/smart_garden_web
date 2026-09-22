import 'package:smart_garden/features/data/model/message_model/message_model.dart';

class ConversationModel {
  final int? id;
  final String? kind;
  final String? status;
  final int? assignedAgentId;
  final List<ConversationParticipantModel> participants;
  final MessageModel? lastMessage;
  final int? lastReadMessageId;
  final bool? hasUnreadMessages;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ConversationModel({
    this.id,
    this.kind,
    this.status,
    this.assignedAgentId,
    this.participants = const [],
    this.lastMessage,
    this.lastReadMessageId,
    this.hasUnreadMessages,
    this.createdAt,
    this.updatedAt,
  });

  factory ConversationModel.fromJson(Map<String, dynamic> json) {
    return ConversationModel(
      id: json['id'] as int?,
      kind: json['kind'] as String?,
      status: json['status'] as String?,
      assignedAgentId: json['assigned_agent_id'] as int?,
      participants: (json['participants'] as List<dynamic>? ?? [])
          .whereType<Map<String, dynamic>>()
          .map(ConversationParticipantModel.fromJson)
          .toList(),
      lastMessage: json['last_message'] is Map<String, dynamic>
          ? MessageModel.fromJson(json['last_message'] as Map<String, dynamic>)
          : null,
      lastReadMessageId: json['last_read_message_id'] as int?,
      hasUnreadMessages: json['has_unread_messages'] as bool?,
      createdAt: _date(json['created_at']),
      updatedAt: _date(json['updated_at']),
    );
  }

  static DateTime? _date(Object? value) =>
      value is String ? DateTime.tryParse(value) : null;
}

class ConversationParticipantModel {
  final int? id;
  final String? name;
  final String? avatar;
  final String? role;
  final bool? isAdmin;

  const ConversationParticipantModel({
    this.id,
    this.name,
    this.avatar,
    this.role,
    this.isAdmin,
  });

  factory ConversationParticipantModel.fromJson(Map<String, dynamic> json) {
    return ConversationParticipantModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      role: json['role'] as String?,
      isAdmin: json['is_admin'] as bool?,
    );
  }
}
