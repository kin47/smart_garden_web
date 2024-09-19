part of 'kit_and_users_bloc.dart';

@CopyWith()
class KitAndUsersState extends BaseBlocState {
  final String searchKey;
  final List<UserEntity> connectedUsers;
  final List<UserEntity> searchedUsers;

  const KitAndUsersState({
    required super.status,
    super.message,
    required this.searchKey,
    required this.connectedUsers,
    required this.searchedUsers,
  });

  factory KitAndUsersState.initial() => const KitAndUsersState(
      status: BaseStateStatus.init,
      searchKey: '',
      connectedUsers: [],
      searchedUsers: [],
    );

  @override
  List get props => [
    status,
    message,
    searchKey,
    connectedUsers,
    searchedUsers,
  ];
}
