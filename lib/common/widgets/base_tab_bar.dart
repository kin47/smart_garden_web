import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smart_garden/common/app_theme/app_colors.dart';
import 'package:smart_garden/common/app_theme/app_text_styles.dart';
import 'package:smart_garden/common/widgets/buttons/app_button.dart';
import 'package:smart_garden/features/domain/entity/bottom_nav_bar_item_entity.dart';
import 'package:smart_garden/features/domain/enum/core_tab.dart';
import 'package:smart_garden/gen/assets.gen.dart';

class BaseTabBar extends StatelessWidget {
  final CoreTab activeTab;
  final List<BottomNavBarItemEntity> items;
  final Color? backgroundColor;
  final Function(
    BottomNavBarItemEntity item,
  ) onClickBottomBar;
  final VoidCallback onLogout;

  const BaseTabBar({
    super.key,
    required this.items,
    this.backgroundColor,
    required this.onClickBottomBar,
    required this.activeTab,
    required this.onLogout,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary700,
      width:
          ResponsiveBreakpoints.of(context).smallerThan(DESKTOP) ? 50 : 0.2.sw,
      height: 1.sh,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          1.sw > 700
              ? Assets.images.logo.image(
                  width: 0.2.sw,
                )
              : SizedBox(height: 8.h),
          ...items
              .map(
                (e) => BaseTabItem(
                  isActive: e.type == activeTab,
                  item: e,
                  onPressed: () {
                    onClickBottomBar(e);
                  },
                ),
              )
              .toList(),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            child: AppButton(
              title: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                  ? ''
                  : 'logout'.tr(),
              backgroundColor: AppColors.red,
              leadingIcon:
                  ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                      ? const Icon(
                          Icons.logout,
                          color: AppColors.white,
                        )
                      : null,
              onPressed: onLogout,
            ),
          ),
        ],
      ),
    );
  }
}

class BaseTabItem extends StatelessWidget {
  final BottomNavBarItemEntity item;
  final Function() onPressed;
  final bool isActive;

  const BaseTabItem({
    Key? key,
    required this.item,
    required this.onPressed,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? AppColors.white : AppColors.primary700,
          borderRadius: BorderRadius.circular(8.r),
        ),
        margin: EdgeInsets.symmetric(
          horizontal: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
              ? 16.w
              : 8.w,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16.h,
            horizontal: 16.w,
          ),
          child: Row(
            mainAxisSize: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                ? MainAxisSize.max
                : MainAxisSize.min,
            mainAxisAlignment:
                ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.start,
            children: [
              item.type.icon(
                isActive,
                size: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                    ? 24
                    : 28.w,
              ),
              SizedBox(
                width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                    ? 0
                    : 16.w,
              ),
              ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                  ? const SizedBox.shrink()
                  : Expanded(
                      child: Text(
                        item.type.title,
                        style: AppTextStyles.s16w400.copyWith(
                          color:
                              isActive ? AppColors.primary700 : AppColors.white,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
