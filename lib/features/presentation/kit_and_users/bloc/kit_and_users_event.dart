part of 'kit_and_users_bloc.dart';

@freezed
class KitAndUsersEvent with _$KitAndUsersEvent {
  const factory KitAndUsersEvent.getUsersInKit({
    required KitEntity kit,
    required int page,
  }) = _GetUsersInKit;

  const factory KitAndUsersEvent.addUserToKit({
    required UserEntity user,
  }) = _AddUserToKit;

  const factory KitAndUsersEvent.removeUserFromKit({
    required UserEntity user,
  }) = _RemoveUserFromKit;
}
