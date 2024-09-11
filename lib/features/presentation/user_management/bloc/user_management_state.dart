part of 'user_management_bloc.dart';

@CopyWith()
class UserManagementState extends BaseBlocState {
  const UserManagementState({
    required super.status,
    super.message,
  });

  factory UserManagementState.init() => const UserManagementState(
        status: BaseStateStatus.init,
      );

  @override
  List get props => [
    status,
    message,
  ];
}
