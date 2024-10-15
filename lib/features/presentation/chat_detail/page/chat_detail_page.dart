import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smart_garden/base/base_widget.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/features/presentation/chat_detail/bloc/chat_detail_bloc.dart';

@RoutePage()
class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends BaseState<ChatDetailPage, ChatDetailEvent,
    ChatDetailState, ChatDetailBloc> {
  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(
        title: 'chat_with_admin'.tr(),
      ),
    );
  }
}
