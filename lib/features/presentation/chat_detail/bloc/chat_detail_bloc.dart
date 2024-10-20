import 'dart:async';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/base/bloc/index.dart';
import 'package:smart_garden/common/mixins/paging_mixin.dart';
import 'package:smart_garden/features/data/request/connect_ws_request/connect_ws_request.dart';
import 'package:smart_garden/features/data/request/get_chat_messages_request/get_chat_messages_request.dart';
import 'package:smart_garden/features/domain/entity/chat_message_entity.dart';
import 'package:smart_garden/features/domain/enum/sender_enum.dart';
import 'package:smart_garden/features/domain/enum/ws_action_enum.dart';
import 'package:smart_garden/features/domain/repository/chat_repository.dart';

part 'chat_detail_event.dart';
part 'chat_detail_state.dart';
part 'chat_detail_bloc.freezed.dart';
part 'chat_detail_bloc.g.dart';

@injectable
class ChatDetailBloc extends BaseBloc<ChatDetailEvent, ChatDetailState>
    with BaseCommonMethodMixin {
  ChatDetailBloc(this._chatRepository) : super(ChatDetailState.init()) {
    on<ChatDetailEvent>((event, emit) async {
      await event.when(
        init: (userId) => _init(emit, userId),
        readMessage: () => _readMessage(emit),
        getChatMessages: (page, lastMessageId, userId) =>
            _getChatMessages(emit, page, lastMessageId, userId),
        sendMessage: (message) => _sendMessage(emit, message),
        updateLastSeenMessageIndex: (index) =>
            _updateLastSeenMessageIndex(emit, index),
      );
    });
  }

  final ChatRepository _chatRepository;
  late final StreamSubscription wsMessageStream;
  final TextEditingController chatTextController = TextEditingController();

  final PagingController<int, ChatMessageEntity> pagingController =
      PagingController(firstPageKey: 1);

  Future _init(Emitter<ChatDetailState> emit, int userId) async {
    _chatRepository.chatInitialize(
      connectRequest: ConnectWSRequest(
        userId: userId,
      ),
    );
    wsMessageStream = _chatRepository.wsMessageStream().listen(
      (event) async {
        switch (event.action) {
          case WSActionEnum.sendChatMessage:
            _addMessage(
              emit,
              ChatMessageEntity(
                message: event.data?.message ?? '',
                time: DateTime.now(),
                sender: event.data?.sender ?? SenderEnum.admin,
                isUserRead: false,
              ),
            );
            if (state.lastSeenMessageIndex != null) {
              add(ChatDetailEvent.updateLastSeenMessageIndex(
                  state.lastSeenMessageIndex! + 1));
            }
            break;
          case WSActionEnum.seen:
            int index = -1;
            for (int i = 0; i < (pagingController.itemList?.length ?? 0); i++) {
              final item = pagingController.itemList![i];
              if (index == -1 && item.sender == SenderEnum.user) {
                pagingController.itemList![i] =
                    item.copyWith(isUserRead: true);
                index = i;
                add(ChatDetailEvent.updateLastSeenMessageIndex(i));
                break;
              }
            }
            break;
          default:
            break;
        }
      },
    );
    add(const ChatDetailEvent.readMessage());
  }

  Future _readMessage(Emitter<ChatDetailState> emit) async {
    emit(state.copyWith(status: BaseStateStatus.idle));
    final res = await _chatRepository.readMessage();
    if (res) {
      emit(
        state.copyWith(
          status: BaseStateStatus.idle,
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: BaseStateStatus.failed,
          message: 'error_system'.tr(),
        ),
      );
    }
  }

  Future _getChatMessages(
    Emitter<ChatDetailState> emit,
    int page,
    int? lastMessageId,
    int userId,
  ) async {
    final res = await _chatRepository.getChatMessages(
      request: GetChatMessagesRequest(
        lastId: lastMessageId,
        userId: userId,
      ),
    );
    pagingControllerOnLoad<ChatMessageEntity>(
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
            status: BaseStateStatus.idle,
          ),
        );
      },
    );
  }

  Future _sendMessage(Emitter<ChatDetailState> emit, String message) async {
    emit(state.copyWith(status: BaseStateStatus.idle));
    final res = await _chatRepository.sendMessage(
      message: message,
    );
    if (res) {
      emit(
        state.copyWith(
          status: BaseStateStatus.idle,
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: BaseStateStatus.failed,
          message: 'error_system'.tr(),
        ),
      );
    }
  }

  Future _updateLastSeenMessageIndex(
      Emitter<ChatDetailState> emit, int index) async {
    emit(state.copyWith(lastSeenMessageIndex: index));
  }

  void _addMessage(
    Emitter<ChatDetailState> emit,
    ChatMessageEntity message,
  ) {
    pagingControllerAddItem(pagingController, message, 0);
  }
}
