import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  bool colorCodeDetailsUp = false;
  void setColorCodeDetailsUp(bool colorCodeDetailsUp) {
    this.colorCodeDetailsUp = colorCodeDetailsUp;
    notifyListeners();
  }
}
