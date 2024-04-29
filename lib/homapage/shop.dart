import 'dart:html';

import 'package:flutter/material.dart';

import '../UI/styles/mainTheme.dart';
class MyShopPage extends StatefulWidget {
  const MyShopPage({super.key, required this.title});
  final String title;

  @override
  State<MyShopPage> createState() => _MyShopPageState();
}

class _MyShopPageState extends State<MyShopPage> {

  @override
  Widget build(BuildContext context) {
    double defpad = 32;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(child: Text("(о_о )",style: mainTheme.textTheme.displayLarge)),
                  SizedBox(height: 32),
                  Text("+78005553535",style: mainTheme.textTheme.labelSmall),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration( borderRadius: BorderRadius.circular(16)),
                          child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Мои бонусы",style: mainTheme.textTheme.titleSmall),
                            Text("700.2",style: mainTheme.textTheme.titleLarge),
                            Text("Подробнее",style: mainTheme.textTheme.titleMedium),
                            ],
                          ),
                        ),),
                      ),
                    ],
                  ),
                  SizedBox(height:defpad),
                  Row(children:[
                    Expanded(child:ElevatedButton(onPressed: (){}, child: Padding(
                        padding: const EdgeInsets.all(12.0), child:Text("Приведи друга - получи леща",style: mainTheme.textTheme.headlineSmall)))
                    )
                  ]),
                  SizedBox(height:defpad),
                  Center(child:Text("Покажи штрихкод кассиру для начисления бонусов при оплате")),
                  SizedBox(height:5),
                  Center(child:Icon(Icons.bar_chart,size:80)),
                  SizedBox(height: defpad),
                  Column(
                    children: [
                      Text("Мои заказы"),
                      SizedBox(height:defpad),
                      Text("Мои адреса")
                    ],
                  ),
                  SizedBox(height:defpad),

                ],
              ),
            ),

          Container(decoration: BoxDecoration(), child: Padding(
            padding: const EdgeInsets.only(left:32,top: 10, bottom: 10, right: 32),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children:[Icon(Icons.restaurant_menu),Text("Меню"),],),
                Column(children:[Icon(Icons.person),Text("Профиль"),],),
                Column(children:[Icon(Icons.phone),Text("Контакты"),],),
                Column(children:[Icon(Icons.local_pizza_outlined),Text("Корзина"),],),
              ]
            )
          )
          )
        ],
      ),
    );
  }
}
