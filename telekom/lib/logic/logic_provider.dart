import 'package:flutter/material.dart';
import 'package:telekom/logic/colors/tia.dart';

class LogicProvider extends ChangeNotifier {
  String text = "";

  int get pos => int.tryParse(text) ?? -1;
  bool get valid => pos != -1;

  int get row {
    final rawRow = (pos - 1) ~/ 12 + 1;
    return valid ? rawRow : -1;
  }

  int get id {
    final rawId = pos % 12 == 0 ? 12 : pos % 12;
    return valid ? rawId : -1;
  }

  Tia get color {
    return valid ? Tia.tia.get(id - 1) : Tia.tia;
  }

  void add(String n) {
    if (text.length > 10) return;
    if (text.isEmpty && n == "0") return;
    text += n;
    notifyListeners();
  }

  void pop() {
    if (text.isEmpty) return;
    text = text.substring(0, text.length - 1);
    notifyListeners();
  }

  void clear() {
    text = "";
    notifyListeners();
  }
}
