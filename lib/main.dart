import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hikayati_app/features/Regestrion/presintation/page/LoginPage.dart';

import 'features/Home/presintation/page/HomePage.dart';
import 'features/Regestrion/presintation/page/SignupPage.dart';
import 'features/Settings/presintation/page/SettingPage.dart';
import 'features/Settings/presintation/page/lockPage.dart';
import 'features/Story/presintation/page/StoryPage.dart';
import 'features/introdection/presintation/page/IntroScreen.dart';
import 'features/introdection/presintation/page/introduction_screen.dart';
import 'features/introdection/presintation/page/onboardingOne.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [
     DeviceOrientation.landscapeLeft,
      //DeviceOrientation.landscapeRight,
    ]
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: IntroScreen(),
    );
  }
}
