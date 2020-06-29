import 'package:flutter/material.dart';
import 'package:flutter_app_design8/screens/onboarding/data/onboard_page_data.dart';

class ColorProvide with ChangeNotifier {
  Color _color = onboardData[0].accentColor;

  Color get color => _color;

  set color(Color color) {
    _color = color;
    notifyListeners();
  }
}