import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hikayati_app/core/util/ScreenUtil.dart';

import '../../../../core/app_theme.dart';
import '../../../../core/widgets/CastemInput.dart';
import '../../../../core/widgets/CustemIcon.dart';
import '../../../../gen/assets.gen.dart';

class onboardingTow extends StatefulWidget {
  const onboardingTow({Key? key}) : super(key: key);

  @override
  State<onboardingTow> createState() => _onboardingTowState();
}

class _onboardingTowState extends State<onboardingTow> {
  ScreenUtil screenUtil = ScreenUtil();

  TextEditingController result = TextEditingController();
  int num1 = Random().nextInt(100);
  int num2 = Random().nextInt(100);
  int num3 = Random().nextInt(100);
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    screenUtil.init(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Center(
          child: Container(
        height: screenUtil.screenHeight * .9,
        width: screenUtil.screenWidth * .8,
        margin: EdgeInsets.only(
          top: 25,
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 4, color: AppTheme.primarySwatch.shade500),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  maxRadius: 40,
                  backgroundColor: Colors.white,
                  child: Image.asset(Assets.assest.images.logo.path),
                ),
                Text('حكايتي', style: AppTheme.textTheme.headline3),
                Text('لطفاً، قم بحل هذه المعادلة للضبط إعدادات التطبيق :',
                    style: AppTheme.textTheme.headline3),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: screenUtil.screenHeight * .4,
                        width: screenUtil.screenWidth * .2,
                        child: Image.asset(
                            Assets.assest.images.carecters.hana.happy.path)),
                    Column(
                      children: [
                        Container(
                            height: screenUtil.screenHeight * .1,
                            width: screenUtil.screenWidth * .3,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2,
                                    color: AppTheme.primarySwatch.shade400),
                                color: AppTheme.primarySwatch.shade50,
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.only(
                                bottom: 30, top: 0, left: 0, right: 50),
                            child: Center(
                                child: Text(
                              '$num1 + $num2 + $num3   ',
                              style: AppTheme.textTheme.displayLarge,
                              textDirection: TextDirection.rtl,
                            ))),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {

                                if (_loginFormKey.currentState!.validate()) {

                                } else {

                                }
                              },
                              child: Text('تم',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          AppTheme.primarySwatch.shade600)),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            CustemInput(
                              size: 200,
                              valdution: (value) {
                                if (value.toString().isEmpty) {
                                  return 'يرجئ منك كتابه الحل';
                                }
                                if(int.parse(value.toString())!= num1+num2+num3){
                                  return 'يرجئ منك كتابه الحل بشكل صحيح';
                                }

                                return null;
                              },
                              controler: result,
                              icon: Icon(Icons.calculate),
                              text: 'اكتب الحل ',
                              type: TextInputType.number,
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                        height: screenUtil.screenHeight * .4,
                        width: screenUtil.screenWidth * .2,
                        child: Image.asset(
                            Assets.assest.images.carecters.mohamed.happy.path)),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
