import 'dart:html';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/UI/styles/colors.dart';
import 'package:flutter_project/fnc/LangvButton.dart';
import 'package:flutter_project/generated/locale_keys.g.dart';

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
                  Row(
                    children: [
                      LangvButton(butFnx:(){
                        if(context.locale == const Locale("ru"))
                        {
                          context.setLocale(const Locale("en"));
                        }
                        else{
                          context.setLocale(const Locale("ru"));
                        }
                      }),
                      Expanded(child: Container()),
                      Center(child: Text(LocaleKeys.author.tr(),style: mainTheme.textTheme.displayLarge)),
                      Expanded(child: Container()),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text("#PHONE",style: mainTheme.textTheme.labelSmall),
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
                            Text(LocaleKeys.my_bonus.tr(),style: mainTheme.textTheme.titleSmall),
                            Text("#BALANCE",style: mainTheme.textTheme.titleLarge),
                            Text(LocaleKeys.more_detail.tr(),style: mainTheme.textTheme.titleMedium),
                            ],
                          ),
                        ),),
                      ),
                    ],
                  ),
                  SizedBox(height:defpad),
                  Row(children:[
                    Expanded(child:ElevatedButton(onPressed: (){}, child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child:Text(LocaleKeys.invite_button.tr(),
                            style: mainTheme.textTheme.headlineSmall)))
                    )
                  ]),
                  SizedBox(height:defpad),
                  Center(child:Text(LocaleKeys.invite_text.tr(),style: mainTheme.textTheme.labelSmall)),
                  SizedBox(height:5),
                  Center(child:Text("#BARCODE",style: TextStyle(fontSize: 40))),
                  SizedBox(height: defpad),
                  Column(
                    children: [
                      Text(LocaleKeys.my_order.tr(),style: mainTheme.textTheme.headlineMedium),
                      SizedBox(height:defpad),
                      Text(LocaleKeys.my_address,style: mainTheme.textTheme.headlineMedium)
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
                Column(children:[Icon(Icons.restaurant_menu,color: mainGr),Text(LocaleKeys.menu.tr(),style: mainTheme.textTheme.labelSmall),],),
                Column(children:[Icon(Icons.person),Text(LocaleKeys.profile.tr(),style: mainTheme.textTheme.labelSmall),],),
                Column(children:[Icon(Icons.phone),Text(LocaleKeys.contact.tr(),style: mainTheme.textTheme.labelSmall),],),
                Column(children:[Icon(Icons.local_pizza_outlined),Text(LocaleKeys.cart.tr(),style: mainTheme.textTheme.labelSmall),],),
              ]
            )
          )
          )
        ],
      ),
    );
  }
}

