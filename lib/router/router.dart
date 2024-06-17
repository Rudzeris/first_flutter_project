import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_project/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomepageRoute.page,path: '/'),
    AutoRoute(page: MyCardRoute.page),
    AutoRoute(page: NewsFeedRoute.page,),
    AutoRoute(page: SettingsRoute.page),
  ];
}