part of 'kit_and_users_bloc.dart';

@freezed
class KitAndUsersEvent with _$KitAndUsersEvent {
  const factory KitAndUsersEvent.init() = _Init;

  const factory KitAndUsersEvent.searchUsers({
    required String searchKey,
  }) = SearchUsers;

  const factory KitAndUsersEvent.getData({
    String? searchKey,
    int? page,
  }) = _GetData;

  const factory KitAndUsersEvent.addUserToKit({
    required UserEntity user,
  }) = _AddUserToKit;

  const factory KitAndUsersEvent.removeUserFromKit({
    required UserEntity user,
  }) = _RemoveUserFromKit;
}
