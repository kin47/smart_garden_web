import 'package:dartz/dartz.dart';
import 'package:smart_garden/base/network/errors/error.dart';
import 'package:smart_garden/features/domain/entity/conversation_entity.dart';
import 'package:smart_garden/features/domain/entity/message_entity.dart';

abstract class ChatRepository {
  Future<Either<BaseError, List<ConversationEntity>>> getConversations({
    int? limit,
  });

  Future<Either<BaseError, List<MessageEntity>>> getMessages({
    required int conversationId,
    int? before,
    int? limit,
  });

  Future<bool> sendMessage({
    required int conversationId,
    required String body,
    String? clientMessageId,
  });

  Future<bool> readMessage({
    required int conversationId,
    required int lastReadMessageId,
  });

  Future<void> connectChat({required int conversationId});

  Future<void> disconnectChat();

  Stream<Map<String, dynamic>> messageStream({required int conversationId});
}
