import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/base/bloc/base_bloc.dart';
import 'package:smart_garden/base/bloc/base_bloc_state.dart';
import 'package:smart_garden/base/bloc/bloc_status.dart';
import 'package:smart_garden/base/network/errors/extension.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';
import 'package:smart_garden/features/domain/entity/kit_entity.dart';
import 'package:smart_garden/features/domain/enum/kit_order_by_type.dart';
import 'package:smart_garden/features/domain/enum/sort_type.dart';
import 'package:smart_garden/features/domain/repository/kit_repository.dart';

part 'kit_management_event.dart';

part 'kit_management_state.dart';

part 'kit_management_bloc.freezed.dart';

part 'kit_management_bloc.g.dart';

@injectable
class KitManagementBloc
    extends BaseBloc<KitManagementEvent, KitManagementState> {
  KitManagementBloc(this._repository) : super(KitManagementState.init()) {
    on<KitManagementEvent>((event, emit) async {
      await event.when(
        getData: (searchKey, page, orderBy, orderType) => _getData(
          emit,
          searchKey,
          page,
          orderBy,
          orderType,
        ),
      );
    });
  }

  final KitRepository _repository;

  Future _getData(
    Emitter<KitManagementState> emit,
    String? searchKey,
    int? page,
    KitOrderByType? orderBy,
    SortType? orderType,
  ) async {
    emit(
      state.copyWith(
        status: BaseStateStatus.loading,
        currentPage: page ?? 1,
        searchKey: searchKey,
        orderBy: orderBy,
        orderType: orderType,
      ),
    );

    final res = await _repository.getUsers(
      request: PaginationRequest(
        page: page ?? 1,
        searchKey: searchKey ?? state.searchKey,
        orderBy: orderBy?.orderBy ?? state.orderBy?.orderBy,
        orderType: orderType ?? state.orderType,
      ),
    );
    res.fold(
      (l) => emit(
        state.copyWith(
          status: BaseStateStatus.failed,
          message: l.getError,
        ),
      ),
      (r) => emit(
        state.copyWith(
          status: BaseStateStatus.idle,
          kits: r.data,
          totalPages: r.totalPages,
          totalKits: r.totalData,
        ),
      ),
    );
  }
}
