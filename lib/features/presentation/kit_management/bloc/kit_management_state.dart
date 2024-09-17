part of 'kit_management_bloc.dart';

@CopyWith()
class KitManagementState extends BaseBlocState {
  final String searchKey;
  final KitOrderByType? orderBy;
  final SortType orderType;
  final int totalPages;
  final int totalKits;
  final int currentPage;
  final List<KitEntity> kits;

  const KitManagementState({
    required super.status,
    super.message,
    required this.searchKey,
    required this.totalPages,
    required this.totalKits,
    required this.currentPage,
    this.kits = const [],
    this.orderBy,
    this.orderType = SortType.asc,
  });

  factory KitManagementState.init() => const KitManagementState(
        status: BaseStateStatus.init,
        searchKey: '',
        totalPages: 1,
        totalKits: 0,
        currentPage: 1,
      );

  @override
  List get props => [
        status,
        message,
        searchKey,
        totalPages,
        totalKits,
        currentPage,
        kits,
      ];
}
