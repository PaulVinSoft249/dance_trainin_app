import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppModel extends ChangeNotifier {
  ThemeData _themeData = ThemeData(primaryColor: Colors.red);

  ThemeData get themeData => _themeData;

  set themeData(ThemeData a) {
    _themeData = a;
    notifyListeners();
  }
}
