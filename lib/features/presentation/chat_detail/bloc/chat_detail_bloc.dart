import 'dart:async';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/base/bloc/base_bloc.dart';
import 'package:smart_garden/base/bloc/base_bloc_state.dart';
import 'package:smart_garden/base/bloc/bloc_status.dart';
import 'package:smart_garden/base/network/errors/extension.dart';
import 'package:smart_garden/common/mixins/paging_mixin.dart';
import 'package:smart_garden/features/data/model/message_model/message_model.dart';
import 'package:smart_garden/features/domain/entity/chat_message_entity.dart';
import 'package:smart_garden/features/domain/entity/message_entity.dart';
import 'package:smart_garden/features/domain/enum/sender_enum.dart';
import 'package:smart_garden/features/domain/entity/user_entity.dart';
import 'package:smart_garden/features/domain/repository/auth_repository.dart';
import 'package:smart_garden/features/domain/repository/chat_repository.dart';

part 'chat_detail_event.dart';
part 'chat_detail_state.dart';
part 'chat_detail_bloc.freezed.dart';
part 'chat_detail_bloc.g.dart';

@injectable
class ChatDetailBloc extends BaseBloc<ChatDetailEvent, ChatDetailState>
    with BaseCommonMethodMixin {
  ChatDetailBloc(this._chatRepository, this._authRepository)
    : super(ChatDetailState.init()) {
    on<ChatDetailEvent>((event, emit) async {
      await event.when(
        init: (conversationId) => _init(emit, conversationId),
        readMessage: () => _readMessage(emit),
        getChatMessages: (page, before, conversationId) =>
            _getChatMessages(emit, page, before, conversationId),
        sendMessage: (message) => _sendMessage(emit, message),
        updateLastSeenMessageIndex: (index) =>
            _updateLastSeenMessageIndex(emit, index),
      );
    });
  }

  final ChatRepository _chatRepository;
  final AuthRepository _authRepository;
  final TextEditingController chatTextController = TextEditingController();
  final PagingController<int, ChatMessageEntity> pagingController =
      PagingController(firstPageKey: 1);
  StreamSubscription<Map<String, dynamic>>? wsMessageStream;
  int? _conversationId;

  Future<void> _init(Emitter<ChatDetailState> emit, int conversationId) async {
    _conversationId = conversationId;
    final userResult = await _authRepository.getUserInfo();
    userResult.fold(
      (error) => emit(
        state.copyWith(status: BaseStateStatus.failed, message: error.getError),
      ),
      (user) => emit(state.copyWith(user: user, status: BaseStateStatus.idle)),
    );
    await _chatRepository.connectChat(conversationId: conversationId);
    wsMessageStream = _chatRepository
        .messageStream(conversationId: conversationId)
        .listen((event) {
          if (event['type'] == 'message.created') {
            final data = event['data'];
            if (data is Map<String, dynamic>) {
              final message = _toChatMessage(
                MessageEntity.fromModel(MessageModel.fromJson(data)),
              );
              _addMessage(emit, message);
              if (message.sender == SenderEnum.user) {
                add(const ChatDetailEvent.readMessage());
              }
            }
          }
        });
  }

  Future<void> _readMessage(Emitter<ChatDetailState> emit) async {
    final lastMessage = pagingController.itemList?.firstOrNull;
    if (_conversationId == null || lastMessage?.id == null) return;
    await _chatRepository.readMessage(
      conversationId: _conversationId!,
      lastReadMessageId: lastMessage!.id!,
    );
  }

  Future<void> _getChatMessages(
    Emitter<ChatDetailState> emit,
    int page,
    int? before,
    int conversationId,
  ) async {
    final result = await _chatRepository.getMessages(
      conversationId: conversationId,
      before: before,
    );
    result.fold(
      (error) => emit(
        state.copyWith(status: BaseStateStatus.failed, message: error.getError),
      ),
      (messages) {
        pagingControllerOnLoad<ChatMessageEntity>(
          page,
          pagingController,
          Right(messages.map(_toChatMessage).toList()),
          limit: 30,
        );
        emit(state.copyWith(status: BaseStateStatus.idle));
      },
    );
  }

  Future<void> _sendMessage(Emitter<ChatDetailState> emit, String body) async {
    if (_conversationId == null) return;
    final sent = await _chatRepository.sendMessage(
      conversationId: _conversationId!,
      body: body,
      clientMessageId: '${DateTime.now().microsecondsSinceEpoch}',
    );
    if (!sent) {
      emit(
        state.copyWith(
          status: BaseStateStatus.failed,
          message: 'Unable to send message',
        ),
      );
    }
  }

  ChatMessageEntity _toChatMessage(MessageEntity message) => ChatMessageEntity(
    id: message.id,
    message: message.body,
    time: message.createdAt,
    sender: message.senderId == state.user?.id
        ? SenderEnum.admin
        : SenderEnum.user,
    isUserRead: false,
  );

  void _addMessage(Emitter<ChatDetailState> emit, ChatMessageEntity message) {
    pagingControllerAddItem(pagingController, message, 0);
  }

  Future<void> _updateLastSeenMessageIndex(
    Emitter<ChatDetailState> emit,
    int index,
  ) async {
    emit(state.copyWith(lastSeenMessageIndex: index));
  }

  @override
  Future<void> close() async {
    await wsMessageStream?.cancel();
    await _chatRepository.disconnectChat();
    chatTextController.dispose();
    pagingController.dispose();
    return super.close();
  }
}
