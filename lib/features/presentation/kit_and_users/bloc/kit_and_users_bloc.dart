import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/base/bloc/base_bloc.dart';
import 'package:smart_garden/base/bloc/base_bloc_state.dart';
import 'package:smart_garden/base/bloc/bloc_status.dart';
import 'package:smart_garden/base/network/errors/extension.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';
import 'package:smart_garden/features/domain/entity/kit_entity.dart';
import 'package:smart_garden/features/domain/entity/user_entity.dart';
import 'package:smart_garden/features/domain/repository/kit_repository.dart';

part 'kit_and_users_event.dart';
part 'kit_and_users_state.dart';
part 'kit_and_users_bloc.freezed.dart';
part 'kit_and_users_bloc.g.dart';

@injectable
class KitAndUsersBloc extends BaseBloc<KitAndUsersEvent, KitAndUsersState>
    with BaseCommonMethodMixin {
  KitAndUsersBloc(this._kitRepository) : super(KitAndUsersState.initial()) {
    on<KitAndUsersEvent>((event, emit) async {
      await event.when(
        getUsersInKit: (kit, page) => _getUsersInKit(emit, kit, page),
        addUserToKit: (user) => _addUserToKit(emit, user),
        removeUserFromKit: (user) => _removeUserFromKit(emit, user),
      );
    });
  }

  final KitRepository _kitRepository;
  final PagingController<int, UserEntity> usersInKitPagingController =
      PagingController(firstPageKey: 1);
  final PagingController<int, UserEntity> userSearchPagingController =
      PagingController(firstPageKey: 1);

  Future _getUsersInKit(
    Emitter<KitAndUsersState> emit,
    KitEntity kit,
    int page,
  ) async {
    emit(
      state.copyWith(
        status: BaseStateStatus.loading,
        kit: kit,
      ),
    );

    final res = await _kitRepository.getUsersInKit(
      kitId: kit.id,
      request: PaginationRequest(
        page: page,
      ),
    );
    pagingControllerOnLoad<UserEntity>(
      page,
      usersInKitPagingController,
      res,
      onError: (String message) {
        emit(
          state.copyWith(
            status: BaseStateStatus.failed,
            message: message,
          ),
        );
      },
      onSuccess: (r) {
        emit(
          state.copyWith(
            connectedUsers: state.connectedUsers + r,
            status: BaseStateStatus.idle,
          ),
        );
      },
    );
  }

  Future _addUserToKit(Emitter<KitAndUsersState> emit, UserEntity user) async {}

  Future _removeUserFromKit(
    Emitter<KitAndUsersState> emit,
    UserEntity user,
  ) async {
    emit(
      state.copyWith(
        status: BaseStateStatus.loading,
      ),
    );

    final res = await _kitRepository.deleteUserFromKit(
      kitId: state.kit!.id,
      userId: user.id,
    );
    res.fold(
      (l) {
        emit(
          state.copyWith(
            status: BaseStateStatus.failed,
            message: l.getError,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            connectedUsers: state.connectedUsers
                .where((element) => element.id != user.id)
                .toList(),
            status: BaseStateStatus.idle,
          ),
        );
        usersInKitPagingController.refresh();
      },
    );
  }

  @override
  Future<void> close() {
    usersInKitPagingController.dispose();
    userSearchPagingController.dispose();
    return super.close();
  }
}
