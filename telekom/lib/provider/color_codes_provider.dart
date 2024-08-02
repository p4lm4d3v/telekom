import 'package:flutter/material.dart';
import 'package:telekom/model/color_code.dart';
import 'package:telekom/static/default_color_groups.dart';

class ColorCodesProvider extends ChangeNotifier {
  ColorCode code = defaultColorCodes["tia"]!;

  void set(ColorCode code) {
    this.code = code;
    notifyListeners();
  }
}
