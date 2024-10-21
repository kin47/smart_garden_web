import 'package:auto_route/auto_route.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_garden/base/base_widget.dart';
import 'package:smart_garden/base/bloc/bloc_status.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/common/widgets/active_status_circle.dart';
import 'package:smart_garden/common/widgets/base_header_information.dart';
import 'package:smart_garden/common/widgets/buttons/app_button.dart';
import 'package:smart_garden/common/widgets/table_paginator_bar.dart';
import 'package:smart_garden/features/domain/entity/kit_entity.dart';
import 'package:smart_garden/features/domain/enum/kit_order_by_type.dart';
import 'package:smart_garden/features/domain/enum/sort_type.dart';
import 'package:smart_garden/features/presentation/kit_management/bloc/kit_management_bloc.dart';
import 'package:smart_garden/routes/app_pages.gr.dart';

@RoutePage()
class KitManagementPage extends StatefulWidget {
  const KitManagementPage({super.key});

  @override
  State<KitManagementPage> createState() => _KitManagementPageState();
}

class _KitManagementPageState extends BaseState<KitManagementPage,
    KitManagementEvent, KitManagementState, KitManagementBloc> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    bloc.add(const KitManagementEvent.getData());
  }

  @override
  void listener(BuildContext context, KitManagementState state) {
    super.listener(context, state);
    if (state.status == BaseStateStatus.failed) {
      DialogService.showInformationDialog(
        context,
        title: 'error'.tr(),
        description: state.message,
      );
    }
  }

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
              'kit_management'.tr(),
              style: AppTextStyles.s24w700,
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Expanded(
                  child: BaseSearchTextField(
                    searchTextController: _searchController,
                    hintText: 'kit_search_hint'.tr(),
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
                  onPressed: () {
                    bloc.add(
                      KitManagementEvent.getData(
                        searchKey: _searchController.text,
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.gray200,
                      blurRadius: 10,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Theme(
                  data: ThemeData(
                    iconTheme: const IconThemeData(
                      color: AppColors.white,
                    ),
                  ),
                  child: _buildTable(),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Center(
              child: blocBuilder(
                (context, state) => TablePaginatorBar(
                  totalPage: state.totalPages,
                  currentPage: state.currentPage,
                  onPrev: () {
                    bloc.add(KitManagementEvent.getData(
                      page: state.currentPage - 1,
                    ));
                  },
                  onNext: () {
                    bloc.add(KitManagementEvent.getData(
                      page: state.currentPage + 1,
                    ));
                  },
                  onTapPage: (page) {
                    bloc.add(KitManagementEvent.getData(
                      page: page,
                    ));
                  },
                ),
                buildWhen: (previous, current) =>
                    previous.currentPage != current.currentPage ||
                    previous.totalPages != current.totalPages,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTable() {
    return blocBuilder(
      (context, state) => DataTable2(
        sortAscending: state.orderType == SortType.asc,
        sortColumnIndex: state.orderBy?.columnIndex,
        headingRowHeight: 36,
        dataRowHeight: 36,
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
            fixedWidth: 70,
            onSort: (columnIndex, ascending) {
              bloc.add(
                KitManagementEvent.getData(
                  orderBy: KitOrderByType.id,
                  orderType: ascending ? SortType.asc : SortType.desc,
                ),
              );
            },
          ),
          DataColumn2(
            label: Text('name'.tr()),
            size: ColumnSize.M,
            onSort: (columnIndex, ascending) {
              bloc.add(
                KitManagementEvent.getData(
                  orderBy: KitOrderByType.name,
                  orderType: ascending ? SortType.asc : SortType.desc,
                ),
              );
            },
          ),
          DataColumn2(
            label: Text('password'.tr()),
            size: ColumnSize.M,
          ),
          DataColumn2(
            label: Center(child: Text('connected'.tr())),
            size: ColumnSize.S,
          ),
        ],
        rows: List.generate(
          state.kits.length,
          (index) => _userDataRow(
            stt: index + 1,
            kit: state.kits[index],
          ),
        ),
      ),
      buildWhen: (previous, current) =>
          previous.kits != current.kits ||
          previous.orderBy != current.orderBy ||
          previous.orderType != current.orderType,
    );
  }

  DataRow _userDataRow({
    required int stt,
    required KitEntity kit,
  }) {
    return DataRow(
      color: WidgetStateProperty.resolveWith<Color?>(
        (Set<WidgetState> states) {
          if (stt % 2 == 0) {
            return AppColors.gray100;
          }
          return null;
        },
      ),
      cells: [
        DataCell(
          Center(
            child: Text(stt.toString()),
          ),
        ),
        DataCell(
          Text(kit.name),
        ),
        DataCell(
          Text(kit.password),
        ),
        DataCell(
          Center(
            child: ActiveStatusCircle(
              isActive: kit.numberOfConnections > 0,
            ),
          ),
        ),
      ],
      onSelectChanged: (value) {
        context.router.push(
          KitAndUsersRoute(
            kit: kit,
          ),
        );
      },
    );
  }
}
