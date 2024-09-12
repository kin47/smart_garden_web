import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_garden/base/base_widget.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/common/widgets/base_header_information.dart';
import 'package:smart_garden/common/widgets/buttons/app_button.dart';
import 'package:smart_garden/common/widgets/table_paginator_bar.dart';
import 'package:smart_garden/features/presentation/user_management/bloc/user_management_bloc.dart';
import 'package:data_table_2/data_table_2.dart';

@RoutePage()
class UserManagementPage extends StatefulWidget {
  const UserManagementPage({super.key});

  @override
  State<UserManagementPage> createState() => _UserManagementPageState();
}

class _UserManagementPageState extends BaseState<UserManagementPage,
    UserManagementEvent, UserManagementState, UserManagementBloc> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BaseHeaderInformation(),
            SizedBox(height: 24.h),
            Text(
              'user_management'.tr(),
              style: AppTextStyles.s24w700,
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Expanded(
                  child: BaseSearchTextField(
                    searchTextController: _searchController,
                    hintText: 'user_search_hint'.tr(),
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(width: 8.w),
                AppButton(
                  title: 'search'.tr(),
                  borderRadius: 8.r,
                  horizontalPadding: 16.w,
                  childGap: 8.w,
                  trailingIcon: const Icon(
                    Icons.search,
                    color: AppColors.white,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: DataTable2(
                  sortAscending: true,
                  sortColumnIndex: 1,
                  headingRowHeight: 30.0,
                  dataRowHeight: 36.0,
                  horizontalMargin: 0,
                  showCheckboxColumn: false,
                  columnSpacing: 10,
                  headingRowColor: WidgetStateProperty.all(
                    AppColors.primary700,
                  ),
                  headingTextStyle: AppTextStyles.s16w700.copyWith(
                    color: AppColors.white,
                  ),
                  columns: [
                    DataColumn2(
                      label: Center(
                        child: Text('stt'.tr()),
                      ),
                      numeric: true,
                      fixedWidth: 50,
                    ),
                    DataColumn2(
                      label: Text('name'.tr()),
                      size: ColumnSize.M,
                      onSort: (columnIndex, ascending) {},
                    ),
                    DataColumn2(
                      label: Text('email'.tr()),
                      size: ColumnSize.M,
                    ),
                    DataColumn2(
                      label: Text('phone_number'.tr()),
                      size: ColumnSize.M,
                    ),
                    DataColumn2(
                      label: Text('can_predict_disease'.tr()),
                      size: ColumnSize.S,
                      onSort: (columnIndex, ascending) {},
                    ),
                    DataColumn2(
                      label: Text('can_receive_notification'.tr()),
                      size: ColumnSize.S,
                      onSort: (columnIndex, ascending) {},
                    ),
                  ],
                  rows: [],
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Center(
              child: TablePaginatorBar(
                onTapPage: (page) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
