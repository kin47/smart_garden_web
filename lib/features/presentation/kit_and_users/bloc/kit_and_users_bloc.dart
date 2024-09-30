import 'dart:async';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smart_garden/base/bloc/base_bloc.dart';
import 'package:smart_garden/base/bloc/base_bloc_state.dart';
import 'package:smart_garden/base/bloc/bloc_status.dart';
import 'package:smart_garden/base/network/errors/extension.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';
import 'package:smart_garden/features/domain/entity/user_entity.dart';
import 'package:smart_garden/features/domain/repository/user_repository.dart';

part 'kit_and_users_event.dart';

part 'kit_and_users_state.dart';

part 'kit_and_users_bloc.freezed.dart';

part 'kit_and_users_bloc.g.dart';

@injectable
class KitAndUsersBloc extends BaseBloc<KitAndUsersEvent, KitAndUsersState>
    with BaseCommonMethodMixin {
  KitAndUsersBloc(this._userRepository) : super(KitAndUsersState.initial()) {
    on<KitAndUsersEvent>((event, emit) async {
      await event.when(
        init: () => _init(emit),
        searchUsers: (_) {},
        getData: (searchKey, page) => _getData(emit, searchKey, page),
        addUserToKit: (user) => _addUserToKit(emit, user),
        removeUserFromKit: (user) => _removeUserFromKit(emit, user),
      );
    });
    on<SearchUsers>(
      (event, emit) => searchUsers(emit, event.searchKey),
      transformer: debounce(const Duration(milliseconds: 300)),
    );
  }

  final UserRepository _userRepository;
  final PagingController<int, UserEntity> userSearchPagingController =
      PagingController(firstPageKey: 1);

  Future _init(Emitter<KitAndUsersState> emit) async {
    emit(state.copyWith(status: BaseStateStatus.loading));
    userSearchPagingController.addPageRequestListener((pageKey) {
      if (pageKey == 1) {
        _getData(emit, null, pageKey);
      } else {
        _getData(emit, state.searchKey, pageKey);
      }
    });
  }

  Future searchUsers(Emitter<KitAndUsersState> emit, String searchKey) async {
    emit(
      state.copyWith(
        searchKey: searchKey,
        status: BaseStateStatus.loading,
      ),
    );
    userSearchPagingController.refresh();
    await _getData(emit, searchKey, 1);
  }

  Future _getData(
    Emitter<KitAndUsersState> emit,
    String? searchKey,
    int? page,
  ) async {
    final res = await _userRepository.getUsersPaging(
      request: PaginationRequest(
        page: page ?? 1,
        searchKey: searchKey ?? state.searchKey,
      ),
    );
    pagingControllerOnLoad<UserEntity>(
      page ?? 1,
      userSearchPagingController,
      res,
      errorMessage: 'error_get_users'.tr(),
      onError: (error) => emit(
        state.copyWith(
          status: BaseStateStatus.failed,
          message: error,
        ),
      ),
      onSuccess: (data) => emit(
        state.copyWith(
          status: BaseStateStatus.idle,
          searchedUsers: data,
        ),
      ),
    );
  }

  Future _addUserToKit(Emitter<KitAndUsersState> emit, UserEntity user) async {}

  Future _removeUserFromKit(
    Emitter<KitAndUsersState> emit,
    UserEntity user,
  ) async {}
}
