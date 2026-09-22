import 'dart:async';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/base/bloc/base_bloc.dart';
import 'package:smart_garden/base/bloc/base_bloc_state.dart';
import 'package:smart_garden/base/bloc/bloc_status.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/features/domain/entity/conversation_entity.dart';
import 'package:smart_garden/features/domain/repository/auth_repository.dart';
import 'package:smart_garden/features/domain/repository/chat_repository.dart';

part 'chat_list_event.dart';

part 'chat_list_state.dart';

part 'chat_list_bloc.freezed.dart';

part 'chat_list_bloc.g.dart';

@injectable
class ChatListBloc extends BaseBloc<ChatListEvent, ChatListState>
    with BaseCommonMethodMixin {
  ChatListBloc(this._chatRepository, this._authRepository)
    : super(ChatListState.init()) {
    on<ChatListEvent>((event, emit) async {
      await event.when(
        getChatList: (page, searchKey) => _getChatList(emit, searchKey, page),
        searchUser: (searchKey) => null,
        selectChatPerson: (chatPerson) => _selectChatPerson(emit, chatPerson),
        conversationUpdated: (conversation) =>
            _conversationUpdated(emit, conversation),
      );
    });
    on<SearchUser>((event, emit) async {
      await _searchUser(emit, event.searchKey);
    }, transformer: debounce(const Duration(milliseconds: 300)));
  }

  final ChatRepository _chatRepository;
  final AuthRepository _authRepository;
  final TextEditingController chatTextController = TextEditingController();
  final List<StreamSubscription<Map<String, dynamic>>> _chatSubscriptions = [];

  final PagingController<int, ConversationEntity> pagingController =
      PagingController(firstPageKey: 1);

  void _initializeChat(List<ConversationEntity> conversations) {
    for (final conversation in conversations) {
      _chatRepository.connectChat(conversationId: conversation.id);
      _chatSubscriptions.add(
        _chatRepository.messageStream(conversationId: conversation.id).listen((
          event,
        ) {
          if (event['type'] != 'message.created') return;
          final items = [...?pagingController.itemList];
          final index = items.indexWhere((item) => item.id == conversation.id);
          if (index <= 0) return;
          final item = items.removeAt(index);
          items.insert(0, item);
          add(ChatListEvent.conversationUpdated(conversation: item));
        }),
      );
    }
  }

  Future _searchUser(Emitter<ChatListState> emit, String searchKey) async {
    emit(state.copyWith(searchKey: searchKey));
    pagingController.refresh();
  }

  Future _getChatList(
    Emitter<ChatListState> emit,
    String? searchKey,
    int page,
  ) async {
    var currentUserId = state.currentUserId;
    if (currentUserId == null) {
      final userResult = await _authRepository.getUserInfo();
      userResult.fold<void>((_) {}, (user) => currentUserId = user.id);
    }
    final res = await _chatRepository.getConversations(limit: 100);
    pagingControllerOnLoad<ConversationEntity>(
      page,
      pagingController,
      res,
      limit: 100,
      onError: (String message) {
        emit(state.copyWith(status: BaseStateStatus.failed, message: message));
      },
      onSuccess: (r) {
        emit(
          state.copyWith(
            chatPersons: r,
            currentUserId: currentUserId,
            status: BaseStateStatus.idle,
          ),
        );
        _initializeChat(r);
      },
    );
  }

  Future _selectChatPerson(
    Emitter<ChatListState> emit,
    ConversationEntity chatPerson,
  ) async {
    emit(
      state.copyWith(
        status: BaseStateStatus.idle,
        selectedChatPerson: chatPerson,
      ),
    );
  }

  Future<void> _conversationUpdated(
    Emitter<ChatListState> emit,
    ConversationEntity conversation,
  ) async {
    final items = [...state.chatPersons]
      ..removeWhere((item) => item.id == conversation.id)
      ..insert(0, conversation);
    pagingController.itemList = items;
    emit(state.copyWith(chatPersons: items));
  }

  @override
  Future<void> close() async {
    for (final subscription in _chatSubscriptions) {
      await subscription.cancel();
    }
    await _chatRepository.disconnectChat();
    return super.close();
  }
}
