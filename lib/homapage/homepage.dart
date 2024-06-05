import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../UI/styles/mainTheme.dart';
import '../fnc/LangvButton.dart';
import '../generated/locale_keys.g.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool vkClick = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      if(_counter>0) _counter--;
    });
  }

  Color getColorCounter(){
    if(_counter<10)
      return Colors.red;
    else if(_counter<50)
      return Colors.blue;
    else
      return Colors.green;
  }

  void invTextVK(){
    setState(() {
      vkClick=!vkClick;
    });
  }

  Text defaultText(String text){
    return Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey,
        )
    );
  }

  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.background.withBlue(40).withGreen(150).withRed(100),

        title: const Text("CubeWorld"),
        centerTitle: true,
      ),
      body: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LangvButton(butFnx:(){
              if(context.locale == const Locale("ru"))
              {
                context.setLocale(const Locale("en"));
              }
              else{
                context.setLocale(const Locale("ru"));
              }
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ClipOval(
                      child: Image.asset(
                          'assets/images/steve_1.jpeg',
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover
                      ),
                    ),
                    Text(
                      LocaleKeys.my_name.tr(),style: mainTheme.textTheme.titleMedium

                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.all(12.0)
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        ElevatedButton.icon(
                          onPressed: invTextVK,
                          icon: Icon(Icons.account_box),
                          label: Text('ID'),
                        ),
                        if(vkClick)
                          Text('  8(800)555-35-35'),
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.all(6.0)
                    ),

                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.account_balance_wallet),
                      label: Text('Wallet'),
                    ),

                    Padding(
                        padding: EdgeInsets.all(6.0)
                    ),

                    ElevatedButton.icon(
                      onPressed: _incrementCounter,
                      icon: Icon(Icons.add_circle),
                      label: Text('Подписаться'),
                    ),

                    Padding(
                        padding: EdgeInsets.all(6.0)
                    ),

                    ElevatedButton.icon(
                      onPressed: _decrementCounter,
                      icon: Icon(Icons.remove_circle),
                      label: Text('Отписаться'),
                    ),

                    Padding(
                        padding: EdgeInsets.all(6.0)
                    ),

                    Row(
                      children:[
                        Text(
                          LocaleKeys.subs.tr()+': ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '$_counter',
                          style: TextStyle(
                            fontSize: 14,
                            color: getColorCounter(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.all(18.0)
            ),


          Text(
              LocaleKeys.omne.tr(),style: mainTheme.textTheme.displayMedium
          ),
            Padding(
                padding: EdgeInsets.all(18.0)
            ),

            defaultText(
                _selectedDate == null
                    ? 'Угадайте дату рождения'
                    : 'Вы выбрали дату: ${_selectedDate!.year}/${_selectedDate!.month}/${_selectedDate!.day}'+
                    (_selectedDate!.year.toInt() == 2001 && _selectedDate!.month.toInt() == 7
                        && _selectedDate!.day.toInt() == 23 ? ' и угадали(._. ) \"Как?\"' : ' и не угадали (23.07.2001)')
            ),

            Padding(
                padding: EdgeInsets.all(8.0)
            ),

            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: const Text('Выбрать дату'),
            ),

          ],
        ),
      ),
    );
  }
}

