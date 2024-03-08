import 'package:flutter/material.dart';
import 'package:money_management/Music%20app/theme_page/dark_mode.dart';

import 'light_mode.dart';

class Themeprovider extends ChangeNotifier {
  //initail mode
  ThemeData _themeData = lightMode;

  // get theme
  ThemeData get themeData => _themeData;

// is dark mode
  bool get isdarkMode => _themeData == darktMode;

//set theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;

    //update ui
    notifyListeners();
  }

// toggle theme
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darktMode;
    } else {
    themeData = lightMode;
  }
}
}
