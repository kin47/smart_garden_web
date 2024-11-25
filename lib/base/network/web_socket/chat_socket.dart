import 'dart:async';
import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:smart_garden/di/di_setup.dart';
import 'package:smart_garden/features/data/model/chat_message_socket/chat_message_socket.dart';
import 'package:smart_garden/features/data/model/web_socket_model/web_socket_model.dart';
import 'package:smart_garden/features/data/request/connect_ws_request/connect_ws_request.dart';
import 'package:smart_garden/features/domain/enum/sender_enum.dart';
import 'package:smart_garden/features/domain/enum/ws_action_enum.dart';
import 'package:web_socket_channel/status.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class _Const {
  static const int timeOutCloseCode = 1000;
}

class ChatSocket {
  // Separate channels for each user chat
  final Map<int, WebSocketChannel> _channels = {};

  // Separate stream controllers for each user chat
  final Map<int, StreamController<WebSocketModel<ChatMessageSocket>>>
      _controllers = {};

  final int retryDelay = 1;
  Future<String?> Function()? _getNewToken;
  final String endpoint = dotenv.get('WS_URL');
  // final String endpoint = "ws://192.168.1.10:8000/ws/chat";
  final Map<int, bool> _isManualDisconnect = {};

  // Get stream for specific user chat
  Stream<WebSocketModel<ChatMessageSocket>> wsEventStream(int userId) {
    return _controllers[userId]?.stream ?? const Stream.empty();
  }

  // Listen to specific user chat
  StreamSubscription? listen(int userId, void Function(dynamic)? handler) {
    return _controllers[userId]?.stream.listen(handler);
  }

  void initialize({
    required ConnectWSRequest connectRequest,
    Future<String?> Function()? getNewToken,
  }) {
    final userId = connectRequest.userId;
    _getNewToken = getNewToken;

    // Create new controller if doesn't exist
    if (_controllers[userId] == null) {
      _controllers[userId] =
          StreamController<WebSocketModel<ChatMessageSocket>>.broadcast();
      _connect(connectRequest);
      _handlerListener(userId);
    }
  }

  Future<StreamSubscription<dynamic>?> _handlerListener(int userId) async {
    return _channels[userId]?.stream.listen(
      (message) => _onMessage(message, userId),
      onDone: () async {
        logger.d(
          'ChatService => socket closed for user $userId: reason=[${_channels[userId]?.closeReason}], code:[${_channels[userId]?.closeCode}]',
        );

        _isManualDisconnect[userId] =
            _channels[userId]?.closeCode == normalClosure;

        if (_isManualDisconnect[userId] == false && _getNewToken != null) {
          logger.d(
            'ChatService => WebSocketChannel is disconnected for user $userId. Try to reconnect after $retryDelay second...',
          );
          await Future.delayed(Duration(seconds: retryDelay));
          _connect(ConnectWSRequest(userId: userId));
          _handlerListener(userId);
        }
      },
      onError: (e) async {
        _isManualDisconnect[userId] =
            _channels[userId]?.closeCode == normalClosure;
        logger.d('ChatService => #onError for user $userId: $e');
      },
    );
  }

  void _connect(ConnectWSRequest connectRequest) async {
    try {
      final userId = connectRequest.userId;
      _channels[userId] = WebSocketChannel.connect(
        Uri.parse('$endpoint/$userId/'),
      );

      logger.d(
        'ChatService => WebSocketChannel connected to $endpoint/$userId = ${!isDisconnected(userId)}!',
      );

      WebSocketModel<ConnectWSRequest> connectRequestModel =
          WebSocketModel<ConnectWSRequest>(
        action: WSActionEnum.authenticate,
        data: connectRequest,
      );

      add(jsonEncode(connectRequestModel.toJson((value) => value.toJson())),
          userId);
    } catch (e) {
      logger.d('ChatService => error: $e');
    }
  }

  bool isDisconnected(int userId) =>
      _channels[userId]?.closeCode == _Const.timeOutCloseCode;

  void _onMessage(dynamic message, int userId) {
    try {
      if (message is String) {
        Map<String, dynamic> messageData = jsonDecode(message);
        if (messageData['action'] == WSActionEnum.sendChatMessage.value) {
          final data = messageData['data'];
          final chatMessage = ChatMessageSocket.fromJson(data);
          logger.d('ChatService => New message for user $userId: $data');
          _controllers[userId]?.sink.add(
                WebSocketModel<ChatMessageSocket>(
                  action: WSActionEnum.sendChatMessage,
                  data: chatMessage,
                ),
              );
        } else if (messageData['action'] == WSActionEnum.seen.value) {
          final sender = messageData['data']['sender'];
          if (sender == 0) {
            _controllers[userId]?.sink.add(
                  WebSocketModel<ChatMessageSocket>(
                    action: WSActionEnum.seen,
                    data: const ChatMessageSocket(
                      sender: SenderEnum.user,
                    ),
                  ),
                );
            logger.d('ChatService => User $userId read message');
          }
        } else {
          logger.d('ChatService => Unknown message for user $userId: $message');
        }
      }
    } catch (e) {
      logger.d(
          'ChatService => error processing message for user $userId: $message');
    }
  }

  Future<bool> sendMessage(String message, int userId) async {
    WebSocketModel<ChatMessageSocket> chatMessage =
        WebSocketModel<ChatMessageSocket>(
      action: WSActionEnum.sendChatMessage,
      data: ChatMessageSocket(
        message: message,
        sender: SenderEnum.admin,
      ),
    );
    await add(jsonEncode(chatMessage.toJson((value) => value)), userId);
    return !isDisconnected(userId);
  }

  Future<bool> readMessage(int userId) async {
    WebSocketModel<ChatMessageSocket> chatMessage =
        WebSocketModel<ChatMessageSocket>(
      action: WSActionEnum.seen,
      data: const ChatMessageSocket(
        sender: SenderEnum.admin,
      ),
    );
    await add(jsonEncode(chatMessage.toJson((value) => value)), userId);
    return !isDisconnected(userId);
  }

  Future<void> add(String data, int userId) async {
    logger.d('ChatService => Send message to user $userId: $data');

    if (!isDisconnected(userId)) {
      _channels[userId]?.sink.add(data);
    } else {
      logger.d('ChatService => ChatService disconnected for user $userId');
    }
  }

  // Dispose single user chat
  Future<void> disposeUser(int userId) async {
    await _channels[userId]?.sink.close();
    await _controllers[userId]?.close();
    _channels.remove(userId);
    _controllers.remove(userId);
    _isManualDisconnect.remove(userId);
  }

  // Dispose all chats
  Future<void> dispose() async {
    for (final userId in _channels.keys.toList()) {
      await disposeUser(userId);
    }
  }
}
