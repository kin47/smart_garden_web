part of 'chat_detail_bloc.dart';

@CopyWith()
class ChatDetailState extends BaseBlocState {
  final int? lastSeenMessageIndex;
  final UserEntity? user;

  const ChatDetailState({
    required super.status,
    super.message,
    this.lastSeenMessageIndex,
    this.user,
  });

  factory ChatDetailState.init() => const ChatDetailState(
    status: BaseStateStatus.init,
  );

  @override
  List get props => [
    status,
    message,
    user,
    lastSeenMessageIndex,
  ];
}
