import 'package:flutter/material.dart';

import '../app_theme.dart';

class CustemButten2 extends StatelessWidget {

   CustemButten2({Key? key,required this.ontap,required this.text}) : super(key: key);
  Function ontap;
  final text;
  @override
  Widget build(BuildContext context) {
    return                      ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(9))),
            padding: EdgeInsets.all(0),
            backgroundColor: AppTheme.primarySwatch,side: BorderSide( color: AppTheme.primaryColor,)),

        onPressed: (){
          ontap();
    }, child: Container(
        width: 60,
        height: 40,
        decoration: BoxDecoration(
            color: AppTheme.primarySwatch.shade500,
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Center(child: Text(text,style:TextStyle(color: Colors.white,fontFamily: AppTheme.fontFamily),))));

  }
}
