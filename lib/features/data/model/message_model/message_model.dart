class MessageModel {
  final int? id;
  final int? conversationId;
  final int? senderId;
  final String? body;
  final String? clientMessageId;
  final DateTime? createdAt;

  const MessageModel({
    this.id,
    this.conversationId,
    this.senderId,
    this.body,
    this.clientMessageId,
    this.createdAt,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      id: json['id'] as int?,
      conversationId: json['conversation_id'] as int?,
      senderId: json['sender_id'] as int?,
      body: json['body'] as String?,
      clientMessageId: json['client_message_id'] as String?,
      createdAt: json['created_at'] is String
          ? DateTime.tryParse(json['created_at'] as String)
          : null,
    );
  }
}
