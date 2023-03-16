import 'package:flutter/material.dart';

import '../../../../core/app_theme.dart';
import '../../../../core/util/ScreenUtil.dart';

class ReportCard extends StatefulWidget {
  const ReportCard({Key? key}) : super(key: key);

  @override
  State<ReportCard> createState() => _ReportCardState();
}

class _ReportCardState extends State<ReportCard> {
  @override
  ScreenUtil screenUtil=ScreenUtil();

  Widget build(BuildContext context) {
    screenUtil.init(context);

    return Card(
      margin: EdgeInsets.only(right: 40,left: 40,top: 30),
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
      elevation: 5,
      child: Container(
width: screenUtil.screenWidth *.6,
 height: screenUtil.screenHeight *.2,
          child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset('images/story1.png')),
          Text('ذات الرداء الأحمر',style:AppTheme.textTheme.headline3 ,textDirection: TextDirection.rtl,textAlign: TextAlign.right),
          Row(children: [
            Image.asset('images/start.png'),
            Image.asset('images/start.png'),
            Image.asset('images/start.png'),

          ],),
          Text('90%',style:AppTheme.textTheme.headline3 ,textDirection: TextDirection.rtl,textAlign: TextAlign.right),


        ],
      )),
    );
  }
}
