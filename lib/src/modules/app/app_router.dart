import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

import '../../modules/auth/presentation/pages/auth_page.dart';
import '../../modules/home/presentation/pages/home_page.dart';
import '../../modules/splash/presentation/pages/splash_page.dart';
import '../profile/presentation/pages/profile_page.dart';
import '../settings/presentation/pages/settings_page.dart';
import '../supportive/presentation/pages/supportive_page.dart';
import '../tabbar/presentation/pages/tabbar_page.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/'),
        AutoRoute(page: TabBarRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: SupportiveRoute.page),
      ];
}
