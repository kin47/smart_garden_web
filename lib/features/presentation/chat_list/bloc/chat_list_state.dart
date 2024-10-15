part of 'chat_list_bloc.dart';

@CopyWith()
class ChatListState extends BaseBlocState {
  final int? lastSeenMessageIndex;

  const ChatListState({
    required super.status,
    super.message,
    this.lastSeenMessageIndex,
  });

  factory ChatListState.init() => const ChatListState(
      status: BaseStateStatus.init,
    );

  @override
  List get props => [
    status,
    message,
    lastSeenMessageIndex,
  ];
}
