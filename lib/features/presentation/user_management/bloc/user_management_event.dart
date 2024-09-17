part of 'user_management_bloc.dart';

@freezed
class UserManagementEvent with _$UserManagementEvent {
  const factory UserManagementEvent.getData({
    String? searchKey,
    int? page,
    UserOrderByType? orderBy,
    SortType? orderType,
  }) = _GetData;

  const factory UserManagementEvent.updateUser({
    required int userId,
    required bool canPredictDisease,
    required bool canReceiveNotification,
    required bool canAutoControl,
  }) = _UpdateUser;
}
