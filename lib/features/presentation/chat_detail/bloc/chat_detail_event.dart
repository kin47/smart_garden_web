part of 'chat_detail_bloc.dart';

@freezed
class ChatDetailEvent with _$ChatDetailEvent {
  const factory ChatDetailEvent.init({
    required int userId,
  }) = _Init;

  const factory ChatDetailEvent.readMessage() = _ReadMessage;

  const factory ChatDetailEvent.getChatMessages({
    required int page,
    int? lastId,
    required int userId,
  }) = _GetChatMessages;

  const factory ChatDetailEvent.sendMessage({
    required String message,
  }) = _SendMessage;

  const factory ChatDetailEvent.updateLastSeenMessageIndex(int index) =
      _UpdateLastSeenMessageIndex;
}
