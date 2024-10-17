import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/base/network/errors/error.dart';
import 'package:smart_garden/base/network/errors/extension.dart';
import 'package:smart_garden/base/network/web_socket/chat_socket.dart';
import 'package:smart_garden/features/data/datasource/remote/chat_service/chat_service.dart';
import 'package:smart_garden/features/data/model/chat_message_socket/chat_message_socket.dart';
import 'package:smart_garden/features/data/model/web_socket_model/web_socket_model.dart';
import 'package:smart_garden/features/data/request/connect_ws_request/connect_ws_request.dart';
import 'package:smart_garden/features/data/request/get_chat_messages_request/get_chat_messages_request.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';
import 'package:smart_garden/features/domain/entity/chat_message_entity.dart';
import 'package:smart_garden/features/domain/entity/chat_person_entity.dart';
import 'package:smart_garden/features/domain/enum/sender_enum.dart';
import 'package:smart_garden/features/domain/enum/ws_action_enum.dart';
import 'package:smart_garden/features/domain/repository/chat_repository.dart';

@Injectable(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  final ChatService _service;
  final ChatSocket _chatSocket;

  ChatRepositoryImpl(this._service, this._chatSocket);

  @override
  Future<Either<BaseError, List<ChatPersonEntity>>> getChatList({
    required PaginationRequest request,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      return right([
        ChatPersonEntity(
          userId: 1,
          username: 'Trần Quang Minh',
          unreadMessageCount: 0,
          lastMessage: 'Chào bạn',
          lastMessageTime: DateTime.now(),
        ),
        ChatPersonEntity(
          userId: 2,
          username: 'Đỗ Hồng Vân',
          unreadMessageCount: 2,
          lastMessage: 'Tôi muốn mua 1 bộ kit\nGía cả tầm bao nhiêu thế Admin?',
          lastMessageTime: DateTime(2024, 10, 16, 22, 37),
        ),
        ChatPersonEntity(
          userId: 3,
          username: 'Trần Anh Tuấn',
          unreadMessageCount: 0,
        ),
      ]);
    } on DioException catch (e) {
      return left(e.baseError);
    }
  }

  @override
  Future<Either<BaseError, List<ChatMessageEntity>>> getChatMessages({
    required GetChatMessagesRequest request,
  }) async {
    try {
      final res = await _service.getChatMessages(request: request);
      if (res.data == null) {
        return left(BaseError.httpUnknownError('error_system'.tr()));
      }
      return right(
        res.data!.map((e) => ChatMessageEntity.fromModel(e)).toList(),
      );
    } on DioException catch (e) {
      return left(e.baseError);
    }
  }

  @override
  Future<bool> readMessage() async {
    try {
      final res = await _chatSocket.readMessage();
      return res;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> sendMessage({
    required String message,
  }) async {
    try {
      final res = await _chatSocket.sendMessage(message);
      return res;
    } catch (e) {
      return false;
    }
  }

  @override
  void chatInitialize({
    required ConnectWSRequest connectRequest,
  }) {
    _chatSocket.initialize(
      connectRequest: connectRequest,
    );
  }

  @override
  Future<void> disconnectChat() {
    return _chatSocket.dispose();
  }

  @override
  Stream<WebSocketModel<ChatMessageSocket>> wsMessageStream() async* {
    yield* _chatSocket.wsEventStream.asyncExpand(
      (event) async* {
        switch (event.action) {
          case WSActionEnum.sendChatMessage:
            yield WebSocketModel<ChatMessageSocket>(
              action: WSActionEnum.sendChatMessage,
              data: ChatMessageSocket(
                message: event.data?.message ?? '',
                sender: event.data?.sender ?? SenderEnum.user,
              ),
            );
            break;
          case WSActionEnum.seen:
            final sender = event.data?.sender;
            if (sender == SenderEnum.admin) {
              yield WebSocketModel<ChatMessageSocket>(
                action: WSActionEnum.seen,
                data: null,
              );
            }
            break;
          default:
            break;
        }
      },
    );
  }
}
