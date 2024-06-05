import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../homapage/homepage.dart';
import '../pages/news.dart';
import '../pages/setting.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: MyHomeRoute.page, path: '/'),
    AutoRoute(page: NewsFeedRoute.page),
    AutoRoute(page: SettingsRoute.page),
  ];
}
class $AppRouter{}