import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/UI/styles/mainTheme.dart';

import '../router/router.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      title: 'Flutter4ik',
      theme: mainTheme,
      //home: const MyHomePage(title: 'My profile'),
      routerConfig: _appRouter.config(),
    );
  }
}