import 'dart:async';
import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:smart_garden/common/constants/auth_constants.dart';
import 'package:smart_garden/common/local_data/shared_pref.dart';
import 'package:smart_garden/di/di_setup.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatSocket {
  final Map<int, WebSocketChannel> _channels = {};
  final Map<int, StreamController<Map<String, dynamic>>> _controllers = {};
  final Map<int, bool> _manualDisconnect = {};
  final Map<int, int> _pendingReadMessageIds = {};
  final Map<int, int> _refCounts = {};
  final String endpoint = dotenv.get('WS_URL');

  Stream<Map<String, dynamic>> eventStream(int conversationId) =>
      _controllers[conversationId]?.stream ?? const Stream.empty();

  Future<void> connect(int conversationId) async {
    _refCounts[conversationId] = (_refCounts[conversationId] ?? 0) + 1;
    // Reuse the existing connection when another caller (e.g. the chat list
    // and chat detail views) is already connected to avoid duplicate
    // broadcasts for the same conversation.
    if (_channels.containsKey(conversationId)) {
      return;
    }
    _manualDisconnect[conversationId] = false;
    _controllers[conversationId] =
        StreamController<Map<String, dynamic>>.broadcast();
    await _connect(conversationId);
  }

  Future<void> _connect(int conversationId) async {
    try {
      final token = await getIt<LocalStorage>().get<String>(
        AuthConstants.token,
      );
      if (token == null || token.isEmpty) {
        throw StateError('Missing chat access token');
      }
      final uri = Uri.parse(
        '$endpoint/conversations/$conversationId/',
      ).replace(queryParameters: {'access_token': token});
      final channel = WebSocketChannel.connect(uri);
      await channel.ready;
      _channels[conversationId] = channel;
      await _flushPendingRead(conversationId);
      channel.stream.listen(
        (message) => _onMessage(message, conversationId),
        onDone: () => _reconnect(conversationId),
        onError: (_) => _reconnect(conversationId),
      );
    } catch (_) {
      _reconnect(conversationId);
    }
  }

  void _onMessage(dynamic rawMessage, int conversationId) {
    if (rawMessage is! String) return;
    try {
      final decoded = jsonDecode(rawMessage);
      if (decoded is Map<String, dynamic>) {
        _controllers[conversationId]?.add(decoded);
      }
    } catch (_) {
      // Ignore malformed events and keep the connection available.
    }
  }

  void _reconnect(int conversationId) {
    if (_manualDisconnect[conversationId] == true ||
        !_controllers.containsKey(conversationId)) {
      return;
    }
    Future<void>.delayed(const Duration(seconds: 1), () async {
      if (_manualDisconnect[conversationId] != true &&
          _controllers.containsKey(conversationId)) {
        await _connect(conversationId);
      }
    });
  }

  Future<bool> sendMessage(
    int conversationId,
    String body, {
    String? clientMessageId,
  }) async {
    final data = <String, dynamic>{'body': body};
    if (clientMessageId != null) {
      data['client_message_id'] = clientMessageId;
    }
    return _send(conversationId, {'type': 'message.send', 'data': data});
  }

  Future<bool> readMessage(int conversationId, int lastReadMessageId) async {
    _pendingReadMessageIds[conversationId] ??= lastReadMessageId;
    if (lastReadMessageId > _pendingReadMessageIds[conversationId]!) {
      _pendingReadMessageIds[conversationId] = lastReadMessageId;
    }
    return _flushPendingRead(conversationId);
  }

  Future<bool> _flushPendingRead(int conversationId) async {
    final lastReadMessageId = _pendingReadMessageIds[conversationId];
    if (lastReadMessageId == null) return true;
    final sent = await _send(conversationId, {
      'type': 'conversation.read',
      'data': {'last_read_message_id': lastReadMessageId},
    });
    if (sent && _pendingReadMessageIds[conversationId] == lastReadMessageId) {
      _pendingReadMessageIds.remove(conversationId);
    }
    return sent;
  }

  Future<bool> _send(int conversationId, Map<String, dynamic> payload) async {
    final channel = _channels[conversationId];
    if (channel == null) return false;
    channel.sink.add(jsonEncode(payload));
    return true;
  }

  // Releases one caller's interest in the conversation; only tears down the
  // underlying connection once no other caller still needs it.
  Future<void> release(int conversationId) async {
    final remaining = (_refCounts[conversationId] ?? 1) - 1;
    if (remaining > 0) {
      _refCounts[conversationId] = remaining;
      return;
    }
    await disposeConversation(conversationId);
  }

  Future<void> disposeConversation(int conversationId) async {
    _refCounts.remove(conversationId);
    _manualDisconnect[conversationId] = true;
    await _channels[conversationId]?.sink.close(status.normalClosure);
    await _controllers[conversationId]?.close();
    _channels.remove(conversationId);
    _controllers.remove(conversationId);
    _manualDisconnect.remove(conversationId);
    _pendingReadMessageIds.remove(conversationId);
  }

  Future<void> dispose() async {
    for (final conversationId in _channels.keys.toList()) {
      await disposeConversation(conversationId);
    }
  }
}
