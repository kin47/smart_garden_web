part of 'kit_management_bloc.dart';

@CopyWith()
class KitManagementState extends BaseBlocState {
  const KitManagementState({
    required super.status,
    super.message,
  });

  factory KitManagementState.init() => const KitManagementState(
        status: BaseStateStatus.init,
      );

  @override
  List get props => [
    status,
    message,
  ];
}
