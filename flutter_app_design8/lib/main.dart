import 'package:flutter/material.dart';
import 'package:flutter_app_design8/providers/colorProvider.dart';
import 'package:flutter_app_design8/screens/onboarding/onBoarding.dart';
import 'package:flutter_app_design8/themes/styles.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OnBoardingDemo',
      theme: appTheme(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        builder: (context) => ColorProvide(),
        child: OnBoarding(),
      ),
    );
  }
}

