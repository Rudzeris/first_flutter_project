import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/UI/styles/mainTheme.dart';
import 'package:flutter_project/homapage/homepage.dart';
import 'package:flutter_project/homapage/shop.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      title: 'Flutter4ik',
      theme: mainTheme,
      home: const MyHomePage(
          title: 'My profile'),
    );
  }
}