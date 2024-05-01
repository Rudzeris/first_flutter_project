import 'package:flutter/material.dart';
import 'package:flutter_project/fnc/app.dart';
import 'package:easy_localization/easy_localization.dart';

class LangvButton extends StatelessWidget{
  Function() butFnx;

  LangvButton({super.key,required this.butFnx});

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
        onPressed: butFnx,
        child: Padding(
            padding: const EdgeInsets.only(top:9,bottom:14),
            child: Text(
              context.locale.toString(),
              style: TextStyle(color:Colors.white)
            )
        )
    );
  }
}
