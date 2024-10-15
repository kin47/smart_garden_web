import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smart_garden/base/base_widget.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/features/presentation/chat_detail/page/chat_detail_page.dart';
import 'package:smart_garden/features/presentation/chat_list/bloc/chat_list_bloc.dart';

@RoutePage()
class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends BaseState<ChatListPage, ChatListEvent,
    ChatListState, ChatListBloc> {
  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      body: Row(
        children: [
          Container(
            color: AppColors.primary700,
            width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                ? 50
                : 0.2.sw,
          ),
          Expanded(
            child: ChatDetailPage(),
          ),
        ],
      ),
    );
  }
}
