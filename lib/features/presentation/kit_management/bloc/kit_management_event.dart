part of 'kit_management_bloc.dart';

@freezed
class KitManagementEvent with _$KitManagementEvent {
  const factory KitManagementEvent.getData({
    String? searchKey,
    int? page,
    KitOrderByType? orderBy,
    SortType? orderType,
  }) = _GetData;
}
