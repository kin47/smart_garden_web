import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smart_garden/common/app_theme/app_colors.dart';
import 'package:smart_garden/common/app_theme/app_text_styles.dart';
import 'package:smart_garden/common/utils/date_time/date_time_utils.dart';
import 'package:smart_garden/common/widgets/cache_image_widget.dart';
import 'package:smart_garden/features/domain/entity/chat_person_entity.dart';
import 'package:smart_garden/gen/assets.gen.dart';

class ChatPersonItem extends StatelessWidget {
  final ChatPersonEntity chatPerson;
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
          horizontal:
              ResponsiveBreakpoints.of(context).smallerThan(DESKTOP) ? 8 : 16,
          vertical: 8.h,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedImageWidget(
              url: chatPerson.userAvatar ?? '',
              width: 50,
              height: 50,
              radius: 25,
              errorWidget: Assets.images.avatarDefault.image(
                width: 50,
                height: 50,
              ),
            ),
            Visibility(
              visible: !ResponsiveBreakpoints.of(context).smallerThan(DESKTOP),
              child: SizedBox(width: 16.w),
            ),
            Expanded(
              child: Visibility(
                visible:
                    !ResponsiveBreakpoints.of(context).smallerThan(DESKTOP),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chatPerson.username,
                      style: AppTextStyles.s16w600,
                    ),
                    Visibility(
                      visible: chatPerson.lastMessage != null,
                      child: Text(
                        (chatPerson.lastMessage ?? '' "\n"),
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
                    getChatTime(chatPerson.lastMessageTime),
                    style: AppTextStyles.s14w400.copyWith(
                      color: AppColors.gray500,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Visibility(
                    visible: chatPerson.unreadMessageCount != 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: AppColors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          chatPerson.unreadMessageCount.toString(),
                          style: AppTextStyles.s12w600.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
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
    return DateTimeUtils.getStringDate(
      time,
      Pattern.ddMM,
    );
  } else if (diff.inDays > 0) {
    return DateTimeUtils.getStringDate(
      time,
      Pattern.EEEE,
    );
  }
  return DateTimeUtils.getStringDate(
    time,
    Pattern.hhmm,
  );
}
