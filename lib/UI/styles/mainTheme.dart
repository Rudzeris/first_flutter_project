import 'package:flutter/material.dart';
import 'package:flutter_project/UI/styles/colors.dart';
import 'package:flutter_project/UI/styles/testStyle.dart';

final mainTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme(brightness: Brightness.light,primary: mainGr,onPrimary: mainOrg.shade800,  secondary: mainOrg.shade500 ,onSecondary: mainOrg.shade400,error: Colors.red,onError: Colors.redAccent,background: Colors.white,onBackground: mainGr,surface:mainOrg,onSurface: mainTextColor),
    primarySwatch: mainOrg,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: mainTextTheme
);