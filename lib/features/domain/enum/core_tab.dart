import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_garden/common/app_theme/app_colors.dart';
import 'package:smart_garden/routes/app_pages.gr.dart';

enum CoreTab {
  user,
  kit,
  chat;

  String get path => name;

  String get title {
    return '${name}_tab_name'.tr();
  }

  PageRouteInfo<dynamic> get pageRouteInfo {
    switch (this) {
      case CoreTab.user:
        return const UserManagementRoute();
      case CoreTab.kit:
        return const KitManagementRoute();
      case CoreTab.chat:
        return ChatListRoute();
    }
  }

  static CoreTab get defaultRoute => CoreTab.user;
  static List<CoreTab> staticTabs = CoreTab.values.toList()..remove(CoreTab.chat);
  static List<AutoRoute> get routes => [
        RedirectRoute(path: '', redirectTo: CoreTab.defaultRoute.path),
        ...CoreTab.values.map(
          (tab) => AutoRoute(
            path: tab.path,
            page: tab.pageInfo,
          ),
        ),
      ];

  PageInfo get pageInfo {
    switch (this) {
      case CoreTab.user:
        return UserManagementRoute.page;
      case CoreTab.kit:
        return KitManagementRoute.page;
      case CoreTab.chat:
        return ChatListRoute.page;
    }
  }

  Widget icon(bool isActive, {double? size}) {
    switch (this) {
      case CoreTab.user:
        return Icon(
          Icons.person_3_rounded,
          size: size ?? 28.w,
          color: isActive ? AppColors.primary700 : AppColors.white,
        );
      case CoreTab.kit:
        return Icon(
          Icons.devices_sharp,
          size: size ?? 28.w,
          color: isActive ? AppColors.primary700 : AppColors.white,
        );
      case CoreTab.chat:
        return Icon(
          Icons.chat_rounded,
          size: size ?? 28.w,
          color: isActive ? AppColors.primary700 : AppColors.white,
        );
      default:
        return SizedBox(width: 28.w, height: 28.w);
    }
  }
}
