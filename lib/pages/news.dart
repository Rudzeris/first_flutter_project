import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NewsFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Новости'),
      ),
      body: Center(
        child: Text('Здесь расположена новостная лента'),
      ),
    );
  }
}