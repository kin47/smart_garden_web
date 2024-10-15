part of 'chat_detail_bloc.dart';

@freezed
class ChatDetailEvent with _$ChatDetailEvent {
  const factory ChatDetailEvent.init() = _Init;

  const factory ChatDetailEvent.readMessage() = _ReadMessage;

  const factory ChatDetailEvent.getChatMessages(int page) = _GetChatMessages;

  const factory ChatDetailEvent.sendMessage({
    required String message,
  }) = _SendMessage;

  const factory ChatDetailEvent.updateLastSeenMessageIndex(int index) =
      _UpdateLastSeenMessageIndex;
}
