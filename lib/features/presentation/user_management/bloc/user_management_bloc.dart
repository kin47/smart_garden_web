import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/base/bloc/base_bloc.dart';
import 'package:smart_garden/base/bloc/base_bloc_state.dart';
import 'package:smart_garden/base/bloc/bloc_status.dart';
import 'package:smart_garden/base/network/errors/extension.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';
import 'package:smart_garden/features/data/request/update_user_information_request/update_user_information_request.dart';
import 'package:smart_garden/features/domain/entity/user_entity.dart';
import 'package:smart_garden/features/domain/enum/sort_type.dart';
import 'package:smart_garden/features/domain/enum/user_order_by_type.dart';
import 'package:smart_garden/features/domain/repository/user_repository.dart';

part 'user_management_event.dart';

part 'user_management_state.dart';

part 'user_management_bloc.freezed.dart';

part 'user_management_bloc.g.dart';

@injectable
class UserManagementBloc
    extends BaseBloc<UserManagementEvent, UserManagementState> {
  UserManagementBloc(this._repository) : super(UserManagementState.init()) {
    on<UserManagementEvent>((event, emit) async {
      await event.when(
        getData: (searchKey, page, orderBy, orderType) => _getData(
          emit,
          searchKey,
          page,
          orderBy,
          orderType,
        ),
        updateUser: (userId, canPredictDisease, canReceiveNotification,
                canAutoControl) =>
            _updateUser(
          emit,
          userId,
          canPredictDisease,
          canReceiveNotification,
          canAutoControl,
        ),
      );
    });
  }

  final UserRepository _repository;

  Future _getData(
    Emitter<UserManagementState> emit,
    String? searchKey,
    int? page,
    UserOrderByType? orderBy,
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
          users: r.data,
          totalPages: r.totalPages,
          totalUsers: r.totalData,
        ),
      ),
    );
  }

  Future _updateUser(
    Emitter<UserManagementState> emit,
    int userId,
    bool canPredictDisease,
    bool canReceiveNotification,
    bool canAutoControl,
  ) async {
    emit(
      state.copyWith(status: BaseStateStatus.loading),
    );

    final res = await _repository.updateUser(
      userId: userId,
      requestBody: UpdateUserInformationRequest(
        canPredictDisease: canPredictDisease,
        canReceiveNoti: canReceiveNotification,
        canAutoControl: canAutoControl,
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
          users: [
            for (final user in state.users)
              if (user.id == userId)
                user.copyWith(
                  canPredictDisease: canPredictDisease,
                  canReceiveNoti: canReceiveNotification,
                  canAutoControl: canAutoControl,
                )
              else
                user,
          ]
        ),
      ),
    );
  }
}
