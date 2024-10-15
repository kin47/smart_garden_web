import 'dart:async';

import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/base/bloc/index.dart';
import 'package:smart_garden/features/domain/repository/chat_repository.dart';

part 'chat_detail_event.dart';
part 'chat_detail_state.dart';
part 'chat_detail_bloc.freezed.dart';
part 'chat_detail_bloc.g.dart';

@injectable
class ChatDetailBloc extends BaseBloc<ChatDetailEvent, ChatDetailState> {
  ChatDetailBloc(this._chatRepository) : super(ChatDetailState.init()) {
    on<ChatDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final ChatRepository _chatRepository;
  late final StreamSubscription wsMessageStream;
  final TextEditingController chatTextController = TextEditingController();
}
