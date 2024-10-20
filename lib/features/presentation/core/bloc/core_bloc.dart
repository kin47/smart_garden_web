import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/base/bloc/index.dart';
import 'package:smart_garden/base/network/errors/extension.dart';
import 'package:smart_garden/features/domain/enum/core_tab.dart';
import 'package:smart_garden/features/domain/repository/auth_repository.dart';
import 'package:smart_garden/features/domain/repository/chat_repository.dart';

part 'core_event.dart';

part 'core_state.dart';

part 'core_bloc.freezed.dart';

part 'core_bloc.g.dart';

@injectable
class CoreBloc extends BaseBloc<CoreEvent, CoreState> {
  CoreBloc(this._authRepository, this._chatRepository)
      : super(CoreState.init()) {
    on<CoreEvent>((event, emit) async {
      await event.when(
        init: () => onInit(emit),
        changeTab: (tabType) => onChangeTab(tabType, emit),
        logout: () => logout(emit),
      );
    });
  }

  final AuthRepository _authRepository;
  final ChatRepository _chatRepository;

  onInit(Emitter<CoreState> emit) async {

  }

  onChangeTab(CoreTab tabType, Emitter<CoreState> emit) async {
    if (tabType != state.activeTab) {
      emit(
        state.copyWith(
          activeTab: tabType,
        ),
      );
    }
  }

  Future logout(Emitter<CoreState> emit) async {
    emit(state.copyWith(status: BaseStateStatus.loading));
    final logoutRes = await _authRepository.logout();
    logoutRes.fold(
      (l) => emit(
        state.copyWith(
          status: BaseStateStatus.failed,
          message: l.getError,
        ),
      ),
      (r) => emit(
        state.copyWith(
          status: BaseStateStatus.logout,
        ),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _chatRepository.disconnectChat();
    return super.close();
  }
}
