import 'dart:async';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:smart_garden/base/bloc/base_bloc.dart';
import 'package:smart_garden/base/bloc/base_bloc_state.dart';
import 'package:smart_garden/base/bloc/bloc_status.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/features/data/request/pagination_request/pagination_request.dart';
import 'package:smart_garden/features/domain/entity/chat_person_entity.dart';
import 'package:smart_garden/features/domain/repository/chat_repository.dart';

part 'chat_list_event.dart';

part 'chat_list_state.dart';

part 'chat_list_bloc.freezed.dart';

part 'chat_list_bloc.g.dart';

@injectable
class ChatListBloc extends BaseBloc<ChatListEvent, ChatListState>
    with BaseCommonMethodMixin {
  ChatListBloc(this._chatRepository) : super(ChatListState.init()) {
    on<ChatListEvent>(
      (event, emit) async {
        await event.when(
          getChatList: (page, searchKey) => _getChatList(emit, searchKey, page),
          searchUser: (searchKey) => null,
          selectChatPerson: (chatPerson) => _selectChatPerson(emit, chatPerson),
        );
      },
    );
    on<SearchUser>(
      (event, emit) async {
        await _searchUser(emit, event.searchKey);
      },
      transformer: (events, mapper) => events.debounceTime(
        const Duration(milliseconds: 300),
      ),
    );
  }

  final ChatRepository _chatRepository;
  final TextEditingController chatTextController = TextEditingController();

  final PagingController<int, ChatPersonEntity> pagingController =
      PagingController(firstPageKey: 1);

  Future _searchUser(Emitter<ChatListState> emit, String searchKey) async {
    emit(
      state.copyWith(
        searchKey: searchKey,
      ),
    );
    pagingController.refresh();
  }

  Future _getChatList(
    Emitter<ChatListState> emit,
    String? searchKey,
    int page,
  ) async {
    if (page == 1) {
      emit(
        state.copyWith(
          status: BaseStateStatus.loading,
        ),
      );
    }

    final res = await _chatRepository.getChatList(
      request: PaginationRequest(
        page: page,
        searchKey: searchKey ?? state.searchKey,
      ),
    );
    pagingControllerOnLoad<ChatPersonEntity>(
      page,
      pagingController,
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
            chatPersons: state.chatPersons + r,
            status: BaseStateStatus.idle,
          ),
        );
      },
    );
  }

  Future _selectChatPerson(
    Emitter<ChatListState> emit,
    ChatPersonEntity chatPerson,
  ) async {
    emit(
      state.copyWith(
        status: BaseStateStatus.idle,
        selectedChatPerson: chatPerson,
      ),
    );
  }
}
