import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/base/network/errors/error.dart';
import 'package:smart_garden/base/network/errors/extension.dart';
import 'package:smart_garden/base/network/web_socket/chat_socket.dart';
import 'package:smart_garden/features/data/datasource/remote/chat_service/chat_service.dart';
import 'package:smart_garden/features/data/request/get_chat_messages_request/get_chat_messages_request.dart';
import 'package:smart_garden/features/domain/entity/conversation_entity.dart';
import 'package:smart_garden/features/domain/entity/message_entity.dart';
import 'package:smart_garden/features/domain/repository/chat_repository.dart';

@Injectable(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  final ChatService _service;
  final ChatSocket _chatSocket;

  ChatRepositoryImpl(this._service, this._chatSocket);

  @override
  Future<Either<BaseError, List<ConversationEntity>>> getConversations({
    int? limit,
  }) async {
    try {
      final response = await _service.getConversations(limit: limit);
      if (response.data == null) {
        return left(BaseError.httpUnknownError('error_system'.tr()));
      }
      return right(response.data!.map(ConversationEntity.fromModel).toList());
    } on DioException catch (error) {
      return left(error.baseError);
    }
  }

  @override
  Future<Either<BaseError, List<MessageEntity>>> getMessages({
    required int conversationId,
    int? before,
    int? limit,
  }) async {
    try {
      final response = await _service.getMessages(
        conversationId: conversationId,
        request: GetChatMessagesRequest(before: before, limit: limit ?? 30),
      );
      if (response.data == null) {
        return left(BaseError.httpUnknownError('error_system'.tr()));
      }
      return right(response.data!.map(MessageEntity.fromModel).toList());
    } on DioException catch (error) {
      return left(error.baseError);
    }
  }

  @override
  Future<bool> sendMessage({
    required int conversationId,
    required String body,
    String? clientMessageId,
  }) {
    return _chatSocket.sendMessage(
      conversationId,
      body,
      clientMessageId: clientMessageId,
    );
  }

  @override
  Future<bool> readMessage({
    required int conversationId,
    required int lastReadMessageId,
  }) {
    return _chatSocket.readMessage(conversationId, lastReadMessageId);
  }

  @override
  Future<void> connectChat({required int conversationId}) {
    return _chatSocket.connect(conversationId);
  }

  @override
  Future<void> releaseConversation({required int conversationId}) {
    return _chatSocket.release(conversationId);
  }

  @override
  Future<void> disconnectChat() => _chatSocket.dispose();

  @override
  Stream<Map<String, dynamic>> messageStream({required int conversationId}) =>
      _chatSocket.eventStream(conversationId);
}
