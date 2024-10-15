part of 'chat_list_bloc.dart';

@freezed
class ChatListEvent with _$ChatListEvent {
  const factory ChatListEvent.init() = _Init;

  const factory ChatListEvent.readMessage() = _ReadMessage;

  const factory ChatListEvent.getChatMessages(int page) = _GetChatMessages;

  const factory ChatListEvent.sendMessage({
    required String message,
  }) = _SendMessage;

  const factory ChatListEvent.updateLastSeenMessageIndex(int index) =
      _UpdateLastSeenMessageIndex;
}
