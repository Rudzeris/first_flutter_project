

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/router/router.gr.dart';

@RoutePage()
class HomepageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главная страница'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.router.navigate(NewsFeedRoute());
              },
              child: Text('Открыть новостную страницу'),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.navigate(SettingsRoute());
              },
              child: Text('Открыть страницу с настройками'),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.navigate(MyCardRoute());
              },
              child: Text('Открыть страницу с визиткой'),
            ),
          ],
        ),
      ),
    );
  }
}
