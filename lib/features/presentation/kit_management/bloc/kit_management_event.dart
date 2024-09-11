part of 'kit_management_bloc.dart';

@freezed
class KitManagementEvent with _$KitManagementEvent {
  const factory KitManagementEvent.getData({
    required int page,
  }) = _GetData;
}
