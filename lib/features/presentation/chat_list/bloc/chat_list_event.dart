part of 'chat_list_bloc.dart';

@freezed
abstract class ChatListEvent with _$ChatListEvent {
  const factory ChatListEvent.getChatList({
    required int page,
    String? searchKey,
  }) = _GetChatList;

  const factory ChatListEvent.searchUser({required String searchKey}) =
      SearchUser;

  const factory ChatListEvent.selectChatPerson({
    required ConversationEntity chatPerson,
  }) = _SelectChatPerson;

  const factory ChatListEvent.conversationUpdated({
    required ConversationEntity conversation,
  }) = _ConversationUpdated;
}
