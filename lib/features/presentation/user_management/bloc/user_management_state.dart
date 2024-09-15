part of 'user_management_bloc.dart';

@CopyWith()
class UserManagementState extends BaseBlocState {
  final String searchKey;
  final UserOrderByType? orderBy;
  final SortType orderType;
  final int totalPages;
  final int totalUsers;
  final int currentPage;
  final List<UserEntity> users;

  const UserManagementState({
    required super.status,
    super.message,
    required this.searchKey,
    required this.totalPages,
    required this.totalUsers,
    required this.currentPage,
    this.users = const [],
    this.orderBy,
    this.orderType = SortType.asc,
  });

  factory UserManagementState.init() => const UserManagementState(
        status: BaseStateStatus.init,
        searchKey: '',
        totalPages: 1,
        totalUsers: 0,
        currentPage: 1,
      );

  @override
  List get props => [
        status,
        message,
        searchKey,
        totalPages,
        totalUsers,
        currentPage,
        users,
        orderBy,
        orderType,
      ];
}
