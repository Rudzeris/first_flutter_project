import 'package:flutter/material.dart';
import 'package:flutter_project/fnc/app.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(

    EasyLocalization(
      child: MyApp(),
      supportedLocales: [Locale('en'),Locale('ru')],
      path: 'assets/languages',
      fallbackLocale: const Locale('en')
    )
  );
}