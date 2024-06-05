import 'package:auto_route/annotations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../UI/styles/mainTheme.dart';
import '../fnc/LangvButton.dart';
import '../generated/locale_keys.g.dart';
import '../router/router.dart';

@RoutePage()
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
      if (_counter > 0) _counter--;
    });
  }

  Color getColorCounter() {
    if (_counter < 10)
      return Colors.red;
    else if (_counter < 50)
      return Colors.blue;
    else
      return Colors.green;
  }

  void invTextVK() {
    setState(() {
      vkClick = !vkClick;
    });
  }

  Text defaultText(String text) {
    return Text(text,
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ));
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
        backgroundColor: Theme.of(context)
            .colorScheme
            .background
            .withBlue(40)
            .withGreen(150)
            .withRed(100),
        title: const Text("CubeWorld"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ClipOval(
                      child: Image.asset('assets/images/steve_1.jpeg',
                          width: 200, height: 200, fit: BoxFit.cover),
                    ),
                    Text('#NAME',
                        style: mainTheme.textTheme.titleMedium),
                  ],
                ),
                Padding(padding: EdgeInsets.all(12.0)),
                Column(
                  children: [
                    Row(
                      children: [
                        ElevatedButton.icon(
                          onPressed: invTextVK,
                          icon: Icon(Icons.account_box),
                          label: Text('ID', style: mainTheme.textTheme.labelMedium),
                        ),
                        if (vkClick) Text('#TELEPHONE', style: mainTheme.textTheme.labelMedium),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(6.0)),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.account_balance_wallet),
                      label: Text(LocaleKeys.wallet.tr(), style: mainTheme.textTheme.labelMedium,),
                    ),
                    Padding(padding: EdgeInsets.all(6.0)),
                    ElevatedButton.icon(
                      onPressed: _incrementCounter,
                      icon: Icon(Icons.add_circle),
                      label: Text(LocaleKeys.subscribe.tr(), style: mainTheme.textTheme.labelMedium),
                    ),
                    Padding(padding: EdgeInsets.all(6.0)),
                    ElevatedButton.icon(
                      onPressed: _decrementCounter,
                      icon: Icon(Icons.remove_circle),
                      label: Text(LocaleKeys.unsubscribe.tr(), style: mainTheme.textTheme.labelMedium),
                    ),
                    Padding(padding: EdgeInsets.all(6.0)),
                    Row(
                      children: [
                        Text(
                          LocaleKeys.subscribes.tr() + ': ',
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
            Padding(padding: EdgeInsets.all(18.0)),
            Text(LocaleKeys.omne.tr()+ ": " + "#TEXT",
                style: mainTheme.textTheme.labelMedium),
            Padding(padding: EdgeInsets.all(18.0)),
            Text(_selectedDate == null
                ? LocaleKeys.my_date
                : LocaleKeys.select_a_date.tr()+': ${_selectedDate!.year}/${_selectedDate!.month}/${_selectedDate!.day}'),
            Padding(padding: EdgeInsets.all(8.0)),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: Text(LocaleKeys.select_a_date.tr(),style: mainTheme.textTheme.labelMedium),
            ),
          ],
        ),
      ),
    );
  }
}
