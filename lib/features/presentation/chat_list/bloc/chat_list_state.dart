part of 'chat_list_bloc.dart';

@CopyWith()
class ChatListState extends BaseBlocState {
  final String? searchKey;
  final int? currentUserId;
  final List<ConversationEntity> chatPersons;
  final ConversationEntity? selectedChatPerson;

  const ChatListState({
    required super.status,
    super.message,
    required this.chatPersons,
    this.searchKey,
    this.currentUserId,
    this.selectedChatPerson,
  });

  factory ChatListState.init() =>
      const ChatListState(status: BaseStateStatus.init, chatPersons: []);

  @override
  List get props => [
    status,
    message,
    chatPersons,
    searchKey,
    currentUserId,
    selectedChatPerson,
  ];
}
