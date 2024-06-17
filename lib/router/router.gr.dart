// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter_project/card/card.dart' as _i2;
import 'package:flutter_project/homepage/homepage.dart' as _i1;
import 'package:flutter_project/pages/news.dart' as _i3;
import 'package:flutter_project/pages/setting.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomepageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.HomepageScreen(),
      );
    },
    MyCardRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MyCardScreen(),
      );
    },
    NewsFeedRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.NewsFeedScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.SettingsScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomepageScreen]
class HomepageRoute extends _i5.PageRouteInfo<void> {
  const HomepageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomepageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomepageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MyCardScreen]
class MyCardRoute extends _i5.PageRouteInfo<void> {
  const MyCardRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MyCardRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyCardRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.NewsFeedScreen]
class NewsFeedRoute extends _i5.PageRouteInfo<void> {
  const NewsFeedRoute({List<_i5.PageRouteInfo>? children})
      : super(
          NewsFeedRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsFeedRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SettingsScreen]
class SettingsRoute extends _i5.PageRouteInfo<void> {
  const SettingsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
