import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appconfigprovider extends ChangeNotifier {
  String languge = 'ar';
  ThemeMode apptheme = ThemeMode.light;

  void changlanguge(String x) {
    if (languge == x)
      return;
    else {
      languge = x;
    }
    notifyListeners();
  }

  void changtheme(ThemeMode mode) {
    if (apptheme == mode)
      return;
    else {
      apptheme = mode;
    }
    notifyListeners();
  }

  bool darkmode() {
    return apptheme == ThemeMode.dark;
  }
}
