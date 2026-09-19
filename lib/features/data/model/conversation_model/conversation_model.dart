class ConversationModel {
  final int? id;
  final String? kind;
  final String? status;
  final int? assignedAgentId;
  final int? lastReadMessageId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ConversationModel({
    this.id,
    this.kind,
    this.status,
    this.assignedAgentId,
    this.lastReadMessageId,
    this.createdAt,
    this.updatedAt,
  });

  factory ConversationModel.fromJson(Map<String, dynamic> json) {
    return ConversationModel(
      id: json['id'] as int?,
      kind: json['kind'] as String?,
      status: json['status'] as String?,
      assignedAgentId: json['assigned_agent_id'] as int?,
      lastReadMessageId: json['last_read_message_id'] as int?,
      createdAt: _date(json['created_at']),
      updatedAt: _date(json['updated_at']),
    );
  }

  static DateTime? _date(Object? value) =>
      value is String ? DateTime.tryParse(value) : null;
}
