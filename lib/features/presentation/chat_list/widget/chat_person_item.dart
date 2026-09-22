import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:smart_garden/common/app_theme/app_colors.dart';
import 'package:smart_garden/common/app_theme/app_text_styles.dart';
import 'package:smart_garden/common/utils/date_time/date_time_utils.dart';
import 'package:smart_garden/common/widgets/cache_image_widget.dart';
import 'package:smart_garden/features/data/model/conversation_model/conversation_model.dart';
import 'package:smart_garden/features/domain/entity/conversation_entity.dart';

class ChatPersonItem extends StatelessWidget {
  final ConversationEntity chatPerson;
  final int? currentUserId;
  final bool isSelected;
  final VoidCallback onTap;

  const ChatPersonItem({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.chatPerson,
    required this.currentUserId,
  });

  @override
  Widget build(BuildContext context) {
    final participant = _customerParticipant(chatPerson);
    final participantName =
        participant?.name ?? 'Conversation #${chatPerson.id}';
    final hasUnreadMessages = chatPerson.hasUnreadMessages;
    final lastMessageBody = chatPerson.lastMessage?.body;
    final isLastMessageFromCurrentUser =
        chatPerson.lastMessage?.senderId == currentUserId &&
        currentUserId != null;
    final messagePreview =
        isLastMessageFromCurrentUser && lastMessageBody != null
        ? '${'you'.tr()}: $lastMessageBody'
        : lastMessageBody;

    return InkWell(
      onTap: onTap,
      child: Container(
        color: isSelected ? AppColors.gray100 : AppColors.white,
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
              ? 8
              : 16,
          vertical: 8.h,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: AppColors.gray100,
              child: participant?.avatar?.isNotEmpty == true
                  ? ClipOval(
                      child: CachedImageWidget(
                        url: participant!.avatar!,
                        width: 50,
                        height: 50,
                        radius: 25,
                        errorWidget: Text(
                          participantName.characters.first.toUpperCase(),
                          style: AppTextStyles.s12w600,
                        ),
                      ),
                    )
                  : Text(
                      participantName.characters.first.toUpperCase(),
                      style: AppTextStyles.s12w600,
                    ),
            ),
            Visibility(
              visible: !ResponsiveBreakpoints.of(context).smallerThan(DESKTOP),
              child: SizedBox(width: 16.w),
            ),
            Expanded(
              child: Visibility(
                visible: !ResponsiveBreakpoints.of(
                  context,
                ).smallerThan(DESKTOP),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            participantName,
                            style: AppTextStyles.s16w600.copyWith(
                              fontWeight: hasUnreadMessages
                                  ? FontWeight.w700
                                  : FontWeight.w600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: messagePreview != null,
                      child: Text(
                        messagePreview ?? '',
                        style: AppTextStyles.s14w400.copyWith(
                          color: AppColors.gray500,
                          fontWeight: hasUnreadMessages
                              ? FontWeight.w600
                              : FontWeight.w400,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: !ResponsiveBreakpoints.of(context).smallerThan(DESKTOP),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    getChatTime(chatPerson.updatedAt),
                    style: AppTextStyles.s14w400.copyWith(
                      color: AppColors.gray500,
                    ),
                  ),
                  if (hasUnreadMessages) ...[
                    SizedBox(height: 4.h),
                    Container(
                      width: 12.w,
                      height: 12.w,
                      decoration: const BoxDecoration(
                        color: AppColors.richElectricBlue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                  SizedBox(height: 8.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

ConversationParticipantModel? _customerParticipant(
  ConversationEntity conversation,
) {
  for (final participant in conversation.participants) {
    if (participant.role == 'customer') {
      return participant;
    }
  }
  return conversation.participants.isEmpty
      ? null
      : conversation.participants.first;
}

String getChatTime(DateTime? time) {
  if (time == null) {
    return '';
  }
  final now = DateTime.now();
  final diff = now.difference(time);
  if (diff.inDays > 7) {
    return DateTimeUtils.getStringDate(time, Pattern.ddMM);
  } else if (diff.inDays > 0) {
    return DateTimeUtils.getStringDate(time, Pattern.EEEE);
  }
  return DateTimeUtils.getStringDate(time, Pattern.hhmm);
}
