import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smart_garden/common/app_theme/app_colors.dart';
import 'package:smart_garden/common/app_theme/app_text_styles.dart';
import 'package:smart_garden/common/utils/date_time/date_time_utils.dart';
import 'package:smart_garden/features/domain/entity/conversation_entity.dart';

class ChatPersonItem extends StatelessWidget {
  final ConversationEntity chatPerson;
  final bool isSelected;
  final VoidCallback onTap;

  const ChatPersonItem({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.chatPerson,
  });

  @override
  Widget build(BuildContext context) {
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
              child: Text('#${chatPerson.id}', style: AppTextStyles.s12w600),
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
                    Text(
                      'Conversation #${chatPerson.id}',
                      style: AppTextStyles.s16w600,
                    ),
                    Visibility(
                      visible: chatPerson.assignedAgentId != null,
                      child: Text(
                        'Assigned agent: ${chatPerson.assignedAgentId}',
                        style: AppTextStyles.s14w400.copyWith(
                          color: AppColors.gray500,
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
