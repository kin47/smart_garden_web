import 'package:dartz/dartz.dart';
import 'package:smart_garden/base/network/errors/error.dart';
import 'package:smart_garden/features/data/model/chat_message_socket/chat_message_socket.dart';
import 'package:smart_garden/features/data/model/web_socket_model/web_socket_model.dart';
import 'package:smart_garden/features/data/request/connect_ws_request/connect_ws_request.dart';
import 'package:smart_garden/features/data/request/get_chat_messages_request/get_chat_messages_request.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';
import 'package:smart_garden/features/domain/entity/chat_message_entity.dart';
import 'package:smart_garden/features/domain/entity/chat_person_entity.dart';

abstract class ChatRepository {
  Future<Either<BaseError, List<ChatMessageEntity>>> getChatMessages({
    required GetChatMessagesRequest request,
  });

  Future<Either<BaseError, List<ChatPersonEntity>>> getChatList({
    required PaginationRequest request,
  });

  Future<bool> readMessage();

  Future<bool> sendMessage({
    required String message,
  });

  void chatInitialize({required ConnectWSRequest connectRequest});

  Future<void> disconnectChat();

  Stream<WebSocketModel<ChatMessageSocket>> wsMessageStream();
}