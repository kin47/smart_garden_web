part of 'chat_list_bloc.dart';

@CopyWith()
class ChatListState extends BaseBlocState {
  final String? searchKey;
  final ChatPersonEntity? selectedChatPerson;

  const ChatListState({
    required super.status,
    super.message,
    this.searchKey,
    this.selectedChatPerson,
  });

  factory ChatListState.init() => const ChatListState(
      status: BaseStateStatus.init,
    );

  @override
  List get props => [
    status,
    message,
    searchKey,
    selectedChatPerson,
  ];
}
