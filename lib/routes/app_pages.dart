import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:smart_garden/features/domain/enum/core_tab.dart';
import 'package:smart_garden/routes/app_routes.dart';

import 'app_pages.gr.dart';

@singleton
@AutoRouterConfig()
class AppPages extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> routes = [
    AutoRoute(
      path: AppRoutes.initial,
      page: SplashRoute.page,
      initial: true,
    ),
    AutoRoute(path: AppRoutes.login, page: LoginRoute.page),
    AutoRoute(path: AppRoutes.register, page: RegisterRoute.page),
    AutoRoute(
      path: AppRoutes.core,
      page: CoreRoute.page,
      children: CoreTab.routes,
    ),
    AutoRoute(path: AppRoutes.kitAndUsers, page: KitAndUsersRoute.page),
  ];
}
