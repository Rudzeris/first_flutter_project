import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Настройки'),
      ),
      body: Center(
        child: Text('Здесь расположены настройки'),
      ),
    );
  }
}