import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smart_garden/base/base_widget.dart';
import 'package:smart_garden/base/bloc/bloc_status.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/features/domain/entity/kit_entity.dart';
import 'package:smart_garden/features/domain/entity/user_entity.dart';
import 'package:smart_garden/features/presentation/kit_and_users/bloc/kit_and_users_bloc.dart';

@RoutePage()
class KitAndUsersPage extends StatefulWidget {
  final KitEntity kit;

  const KitAndUsersPage({
    super.key,
    required this.kit,
  });

  @override
  State<KitAndUsersPage> createState() => _KitAndUsersPageState();
}

class _KitAndUsersPageState extends BaseState<KitAndUsersPage, KitAndUsersEvent,
    KitAndUsersState, KitAndUsersBloc> {
  @override
  void initState() {
    super.initState();
    bloc.usersInKitPagingController.addPageRequestListener((pageKey) {
      bloc.add(KitAndUsersEvent.getUsersInKit(
        kit: widget.kit,
        page: pageKey,
      ));
    });

    bloc.userSearchPagingController.addPageRequestListener((pageKey) {
      bloc.add(KitAndUsersEvent.getUsersFromSearch(
        page: pageKey,
      ));
    });
  }

  @override
  void listener(BuildContext context, KitAndUsersState state) {
    super.listener(context, state);
    switch (state.status) {
      case BaseStateStatus.failed:
        DialogService.showInformationDialog(
          context,
          title: 'error'.tr(),
          description: state.message ?? 'error_system'.tr(),
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      appBar: BaseAppBar(
        title: widget.kit.name,
      ),
      body: SingleChildScrollView(
        child: ResponsiveRowColumn(
          layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          rowCrossAxisAlignment: CrossAxisAlignment.start,
          rowPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 16.h,
          ),
          columnPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 16.h,
          ),
          rowSpacing: 16.w,
          columnSpacing: 16.h,
          children: [
            _buildUsersInKitSection(context),
            _buildSearchUserForKitSection(context),
          ],
        ),
      ),
    );
  }

  ResponsiveRowColumnItem _buildSearchUserForKitSection(BuildContext context) {
    return ResponsiveRowColumnItem(
      child: Container(
        width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? (1.sw - 32.w)
            : (0.5.sw - 24.w),
        height: 1.sh - 100.h,
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.1),
              blurRadius: 10.r,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            BaseSearchTextField(
              hintText: 'user_search_hint'.tr(),
              onChanged: (value) {
                bloc.add(
                  KitAndUsersEvent.searchUser(
                    searchKey: value,
                  ),
                );
              },
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: CustomListViewSeparated<UserEntity>(
                controller: bloc.userSearchPagingController,
                builder: (context, user, index) => Container(
                  decoration: BoxDecoration(
                    color: index % 2 == 0 ? AppColors.white : AppColors.gray050,
                  ),
                  child: ListTile(
                    title: Text(
                      user.name,
                      style: AppTextStyles.s16w500.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    subtitle: Text(
                      user.email,
                      style: AppTextStyles.s14w400.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: AppColors.green,
                      ),
                      onPressed: () {
                        bloc.add(
                          KitAndUsersEvent.addUserToKit(
                            user: user,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ResponsiveRowColumnItem _buildUsersInKitSection(BuildContext context) {
    return ResponsiveRowColumnItem(
      child: Container(
        width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? (1.sw - 32.w)
            : (0.5.sw - 24.w),
        height: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? null
            : (1.sh - 100.h),
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(0.1),
              blurRadius: 10.r,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'connected_users'.tr(),
              style: AppTextStyles.s20w700,
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: CustomListViewSeparated<UserEntity>(
                controller: bloc.usersInKitPagingController,
                builder: (context, user, index) => Container(
                  decoration: BoxDecoration(
                    color: index % 2 == 0 ? AppColors.white : AppColors.gray050,
                  ),
                  child: ListTile(
                    title: Text(
                      user.name,
                      style: AppTextStyles.s16w500.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    subtitle: Text(
                      user.email,
                      style: AppTextStyles.s14w400.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: AppColors.red,
                      ),
                      onPressed: () {
                        DialogService.showActionDialog(
                          context,
                          description: 'confirm_delete_user_from_kit'.tr(),
                          leftButtonText: 'close'.tr(),
                          onPressedRightButton: () {
                            bloc.add(
                              KitAndUsersEvent.removeUserFromKit(
                                user: user,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
