import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:smart_garden/base/base_widget.dart';
import 'package:smart_garden/base/bloc/bloc_status.dart';
import 'package:smart_garden/common/index.dart';
import 'package:smart_garden/common/notification/local_notification_helper.dart';
import 'package:smart_garden/common/widgets/base_tab_bar.dart';
import 'package:smart_garden/di/di_setup.dart';
import 'package:smart_garden/features/domain/entity/bottom_nav_bar_item_entity.dart';
import 'package:smart_garden/features/domain/enum/core_tab.dart';
import 'package:smart_garden/features/domain/events/event_bus_event.dart';
import 'package:smart_garden/features/presentation/core/bloc/core_bloc.dart';
import 'package:smart_garden/routes/app_pages.gr.dart';

@RoutePage()
class CorePage extends StatefulWidget {
  const CorePage({super.key});

  @override
  State<CorePage> createState() => _CorePageState();
}

class _CorePageState
    extends BaseState<CorePage, CoreEvent, CoreState, CoreBloc> {
  TabsRouter? _tabsRouter;
  EventBus eventBus = getIt<EventBus>();

  @override
  void initState() {
    super.initState();
    bloc.add(const CoreEvent.init());
    eventBus.on<ChangeCoreTabEvent>().listen((event) {
      _tabsRouter?.setActiveIndex(event.tab.index);
      bloc.add(CoreEvent.changeTab(event.tab));
    });
  }

  @override
  void listener(BuildContext context, CoreState state) {
    super.listener(context, state);
    switch (state.status) {
      case BaseStateStatus.failed:
        DialogService.showInformationDialog(
          context,
          title: 'error'.tr(),
          description: state.message ?? 'error_system'.tr(),
        );
        break;
      case BaseStateStatus.logout:
        context.router.replaceAll([const LoginRoute()]);
        break;
      default:
        break;
    }
  }

  @override
  Widget renderUI(BuildContext context) {
    return BaseScaffold(
      body: Row(
        children: [
          blocBuilder(
                (context, state) => BaseTabBar(
              activeTab: state.activeTab,
              onClickBottomBar: (item) {
                eventBus.fire(ChangeCoreTabEvent(item.type));
              },
              items: [
                ...CoreTab.values.map(
                      (e) => BottomNavBarItemEntity(
                    type: e,
                    isSelected: e == state.activeTab,
                  ),
                ),
              ],
              onLogout: () {
                bloc.add(const CoreEvent.logout());
              },
            ),
            buildWhen: (previous, current) =>
            previous.activeTab != current.activeTab,
          ),
          Expanded(
            child: AutoTabsRouter(
              routes: [
                ...CoreTab.values.map(
                  (tab) => tab.pageRouteInfo,
                ),
              ],
              transitionBuilder: (context, child, animation) => FadeTransition(
                opacity: animation,
                child: child,
              ),
              builder: (context, child) {
                _tabsRouter = context.tabsRouter;
                return child;
              },
            ),
          ),
        ],
      ),
    );
  }
}
