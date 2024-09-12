import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_garden/common/app_theme/app_colors.dart';
import 'package:smart_garden/common/app_theme/app_text_styles.dart';
import 'package:smart_garden/gen/assets.gen.dart';

class BaseHeaderInformation extends StatelessWidget {
  const BaseHeaderInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Assets.images.avatarDefault.image(
          width: 40,
        ),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nguyễn Văn A',
              style: AppTextStyles.s16w600,
            ),
            Text(
              'Admin',
              style: AppTextStyles.s14w400.copyWith(
                color: AppColors.gray500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
