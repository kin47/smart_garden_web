import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:smart_garden/base/base_widget.dart';
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

@RoutePage()
class ChatDetailPage extends StatefulWidget {
  final int userId;

  const ChatDetailPage({
    super.key,
    required this.userId,
  });

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends BaseState<ChatDetailPage, ChatDetailEvent,
    ChatDetailState, ChatDetailBloc> {
  int? lastSeenMessageIndex;

  @override
  void initState() {
    super.initState();
    bloc.add(
      ChatDetailEvent.init(
        userId: widget.userId,
      ),
    );
    bloc.pagingController.addPageRequestListener((pageKey) {
      bloc.add(ChatDetailEvent.getChatMessages(
        page: pageKey,
        userId: widget.userId,
        lastId: bloc.pagingController.itemList?.last.id,
      ));
    });
  }

  @override
  void dispose() {
    bloc.pagingController.dispose();
    bloc.wsMessageStream.cancel();
    super.dispose();
  }

  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      appBar: const BaseAppBar(
        hasBack: false,
        title: "widget.username",
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
                    Assets.images.chatNoHistory.image(
                      height: 0.5.sh,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'chat_no_history'.tr(),
                      style: AppTextStyles.s14w400,
                    ),
                  ],
                ),
              ),
              firstPageErrorIndicator: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.chatNoHistory.image(
                      height: 0.5.sh,
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'chat_no_history'.tr(),
                      style: AppTextStyles.s14w400,
                    ),
                  ],
                ),
              ),
              builder: (context, message, index) {
                ChatMessageEntity? previousMessage =
                    getPreviousMessage(bloc.pagingController, index);
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
