part of 'chat_detail_bloc.dart';

@CopyWith()
class ChatDetailState extends BaseBlocState {
  final int? lastSeenMessageIndex;

  const ChatDetailState({
    required super.status,
    super.message,
    this.lastSeenMessageIndex,
  });

  factory ChatDetailState.init() => const ChatDetailState(
    status: BaseStateStatus.init,
  );

  @override
  List get props => [
    status,
    message,
    lastSeenMessageIndex,
  ];
}
