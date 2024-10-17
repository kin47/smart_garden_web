import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smart_garden/base/base_widget.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/features/domain/entity/chat_person_entity.dart';
import 'package:smart_garden/features/presentation/chat_detail/page/chat_detail_page.dart';
import 'package:smart_garden/features/presentation/chat_list/bloc/chat_list_bloc.dart';
import 'package:smart_garden/features/presentation/chat_list/widget/chat_person_item.dart';

@RoutePage()
class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends BaseState<ChatListPage, ChatListEvent,
    ChatListState, ChatListBloc> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    bloc.pagingController.addPageRequestListener((pageKey) {
      bloc.add(ChatListEvent.getChatList(page: pageKey));
    });
  }

  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      body: Row(
        children: [
          Container(
            color: AppColors.white,
            width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                ? 66
                : 0.3.sw,
            child: Column(
              children: [
                Visibility(
                  visible:
                      !ResponsiveBreakpoints.of(context).smallerThan(DESKTOP),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16.h),
                        Text(
                          'chat_list'.tr(),
                          style: AppTextStyles.s20w600,
                        ),
                        SizedBox(height: 8.h),
                        BaseSearchTextField(
                          searchTextController: _searchController,
                          hintText: 'user_search_hint'.tr(),
                          onChanged: (value) {
                            bloc.add(
                                ChatListEvent.searchUser(searchKey: value));
                          },
                        ),
                        SizedBox(height: 16.h),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomListViewSeparated<ChatPersonEntity>(
                    controller: bloc.pagingController,
                    firstPageProgressIndicator: const SizedBox.shrink(),
                    builder: (context, chatPerson, index) => blocBuilder(
                      (context, state) => ChatPersonItem(
                        chatPerson: chatPerson,
                        isSelected: state.selectedChatPerson == chatPerson,
                        onTap: () {
                          bloc.add(
                            ChatListEvent.selectChatPerson(
                              chatPerson: chatPerson,
                            ),
                          );
                        },
                      ),
                      buildWhen: (previous, current) =>
                          previous.selectedChatPerson !=
                          current.selectedChatPerson,
                    ),
                    separatorBuilder: (context, index) => Container(
                      height: 1.h,
                      color: AppColors.gray500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: blocBuilder(
              (context, state) => Visibility(
                visible: state.selectedChatPerson != null,
                child: ChatDetailPage(
                  userId: state.selectedChatPerson?.userId ?? 0,
                  username: state.selectedChatPerson?.username ?? '',
                ),
              ),
              buildWhen: (previous, current) =>
                  previous.selectedChatPerson != current.selectedChatPerson,
            ),
          ),
        ],
      ),
    );
  }
}
