import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:smart_garden/base/base_widget.dart';
import 'package:smart_garden/base/bloc/bloc_status.dart';
import 'package:smart_garden/common/extensions/datetime_extension.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/common/utils/date_time/date_time_utils.dart';
import 'package:smart_garden/features/domain/entity/chat_message_entity.dart';
import 'package:smart_garden/features/domain/enum/sender_enum.dart';
import 'package:smart_garden/features/presentation/chat_detail/bloc/chat_detail_bloc.dart';
import 'package:smart_garden/features/presentation/chat_detail/widget/user_message_widget.dart';
import 'package:smart_garden/features/presentation/chat_detail/widget/chat_text_field.dart';
import 'package:smart_garden/features/presentation/chat_detail/widget/admin_message_widget.dart';
import 'package:smart_garden/gen/assets.gen.dart';
import 'package:universal_html/html.dart' as html;

@RoutePage()
class ChatDetailPage extends StatefulWidget {
  final int conversationId;

  const ChatDetailPage({super.key, required this.conversationId});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState
    extends
        BaseState<
          ChatDetailPage,
          ChatDetailEvent,
          ChatDetailState,
          ChatDetailBloc
        > {
  int? lastSeenMessageIndex;
  late final FocusNode _composerFocusNode;

  @override
  void initState() {
    super.initState();
    _composerFocusNode = FocusNode()..addListener(_onComposerFocusChanged);
    bloc.add(ChatDetailEvent.init(conversationId: widget.conversationId));
    bloc.pagingController.addPageRequestListener((pageKey) {
      bloc.add(
        ChatDetailEvent.getChatMessages(
          page: pageKey,
          conversationId: widget.conversationId,
          before: bloc.pagingController.itemList?.last.id,
        ),
      );
    });
  }

  @override
  void dispose() {
    _composerFocusNode
      ..removeListener(_onComposerFocusChanged)
      ..dispose();
    super.dispose();
  }

  @override
  void listener(BuildContext context, ChatDetailState state) {
    super.listener(context, state);
    switch (state.status) {
      case BaseStateStatus.failed:
        DialogService.showInformationDialog(
          context,
          title: 'error'.tr(),
          description: state.message,
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget renderUI(BuildContext context) {
    html.document.title = 'chat_list'.tr();
    return BaseScaffold(
      appBar: blocBuilder(
        (context, state) =>
            BaseAppBar(hasBack: false, title: state.user?.name ?? 'user'.tr()),
        buildWhen: (previous, current) => previous.user != current.user,
      ),
      body: Column(
        children: [
          Expanded(
            child: CustomListViewSeparated<ChatMessageEntity>(
              controller: bloc.pagingController,
              reverse: true,
              emptyWidget: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.chatNoHistory.image(height: 0.5.sh),
                    SizedBox(height: 16.h),
                    Text('chat_no_history'.tr(), style: AppTextStyles.s14w400),
                  ],
                ),
              ),
              firstPageErrorIndicator: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.chatNoHistory.image(height: 0.5.sh),
                    SizedBox(height: 16.h),
                    Text('chat_no_history'.tr(), style: AppTextStyles.s14w400),
                  ],
                ),
              ),
              builder: (context, message, index) {
                ChatMessageEntity? previousMessage = getPreviousMessage(
                  bloc.pagingController,
                  index,
                );
                String? firstMessageInDay;
                if (!(previousMessage?.time.isSameDay(message.time) ?? false)) {
                  firstMessageInDay = DateTimeUtils.getDateMessage(
                    message.time,
                    languageCode: context.locale.languageCode,
                  );
                }
                if (message.sender == SenderEnum.user) {
                  return UserMessageWidget(
                    message: message,
                    firstMessageInDay: firstMessageInDay,
                  );
                } else {
                  if (message.isUserRead && lastSeenMessageIndex == null) {
                    lastSeenMessageIndex = index;
                    bloc.add(ChatDetailEvent.updateLastSeenMessageIndex(index));
                  }
                  return blocBuilder(
                    (context, state) => AdminMessageWidget(
                      message: message,
                      firstMessageInDay: firstMessageInDay,
                      isLastSeenMessage: state.lastSeenMessageIndex != null
                          ? index == state.lastSeenMessageIndex
                          : index == lastSeenMessageIndex,
                    ),
                    buildWhen: (previous, current) {
                      return previous.lastSeenMessageIndex !=
                          current.lastSeenMessageIndex;
                    },
                  );
                }
              },
              separatorBuilder: (context, index) => const SizedBox.shrink(),
            ),
          ),
          ChatTextField(
            controller: bloc.chatTextController,
            focusNode: _composerFocusNode,
            onTap: _requestRead,
            onSend: (message) {
              if (message?.isNotEmpty ?? false) {
                bloc.add(ChatDetailEvent.sendMessage(message: message!));
              }
            },
          ),
        ],
      ),
    );
  }

  void _onComposerFocusChanged() {
    if (_composerFocusNode.hasFocus) {
      _requestRead();
    }
  }

  void _requestRead() {
    if (mounted) {
      bloc.add(const ChatDetailEvent.readMessage());
    }
  }

  ChatMessageEntity? getPreviousMessage(
    PagingController controller,
    int index,
  ) {
    if ((controller.itemList?.isEmpty ?? true) ||
        index > controller.itemList!.length - 2) {
      return null;
    }
    return controller.itemList?[index + 1];
  }
}
