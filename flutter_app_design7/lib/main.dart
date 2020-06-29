import 'package:flutter/material.dart';
import 'package:flutter_app_design7/onBoardingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Onboardig UI',
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
