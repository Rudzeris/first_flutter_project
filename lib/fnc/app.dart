import 'package:flutter/material.dart';
import 'package:flutter_project/UI/styles/mainTheme.dart';
import 'package:flutter_project/homapage/homepage.dart';
import 'package:flutter_project/homapage/shop.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter4ik',
      theme: mainTheme,
      home: const MyShopPage(
          title: 'My profile'),
    );
  }
}