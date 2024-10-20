part of 'chat_list_bloc.dart';

@CopyWith()
class ChatListState extends BaseBlocState {
  final String? searchKey;
  final List<ChatPersonEntity> chatPersons;
  final ChatPersonEntity? selectedChatPerson;

  const ChatListState({
    required super.status,
    super.message,
    required this.chatPersons,
    this.searchKey,
    this.selectedChatPerson,
  });

  factory ChatListState.init() => const ChatListState(
      status: BaseStateStatus.init,
      chatPersons: [],
    );

  @override
  List get props => [
    status,
    message,
    chatPersons,
    searchKey,
    selectedChatPerson,
  ];
}
