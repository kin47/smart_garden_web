import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/base/bloc/base_bloc.dart';
import 'package:smart_garden/base/bloc/base_bloc_state.dart';
import 'package:smart_garden/base/bloc/bloc_status.dart';
import 'package:smart_garden/base/network/errors/extension.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';
import 'package:smart_garden/features/domain/entity/user_entity.dart';
import 'package:smart_garden/features/domain/repository/user_repository.dart';

part 'kit_and_users_event.dart';

part 'kit_and_users_state.dart';

part 'kit_and_users_bloc.freezed.dart';

part 'kit_and_users_bloc.g.dart';

@injectable
class KitAndUsersBloc extends BaseBloc<KitAndUsersEvent, KitAndUsersState> {
  KitAndUsersBloc(this._userRepository) : super(KitAndUsersState.initial()) {
    on<KitAndUsersEvent>((event, emit) async {
      await event.when(
        init: () => _init(emit),
        getData: (searchKey, page) => _getData(emit, searchKey, page),
        addUserToKit: (user) => _addUserToKit(emit, user),
        removeUserFromKit: (user) => _removeUserFromKit(emit, user),
      );
    });
  }

  final UserRepository _userRepository;
  final PagingController<int, UserEntity> userSearchPagingController =
      PagingController(firstPageKey: 1);

  Future _init(Emitter<KitAndUsersState> emit) async {}

  Future _getData(
    Emitter<KitAndUsersState> emit,
    String? searchKey,
    int? page,
  ) async {
    emit(
      state.copyWith(
        status: BaseStateStatus.loading,
        searchKey: searchKey,
      ),
    );

    final res = await _userRepository.getUsers(
      request: PaginationRequest(
        page: page ?? 1,
        searchKey: searchKey ?? state.searchKey,
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
          searchedUsers: r.data,
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
