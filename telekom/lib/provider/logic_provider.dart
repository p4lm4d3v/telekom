import 'package:flutter/material.dart';
import 'package:telekom/model/color_group.dart';
import 'package:telekom/model/thread_count.dart';
import 'package:telekom/static/default_color_groups.dart';
import 'package:telekom/static/std/std.dart';

class LogicProvider extends ChangeNotifier {
  String text = "";

  ThreadCount count = ThreadCount.twelve;
  List<ThreadCount> allCounts = [
    ThreadCount.six,
    ThreadCount.twelve,
    ThreadCount.twentyFour,
  ];

  String colorGroupName = "tia";
  List<String> allColorGroups = ["tia", "tkf"];

  int get pos => int.tryParse(text) ?? -1;
  bool get valid => pos != -1;
  int get row => valid ? (pos - 1) ~/ 12 + 1 : -1;
  int get id => valid
      ? pos % 12 == 0
          ? 12
          : pos % 12
      : -1;

  String get countText => count.toString();
  List<String> get allCountTexts => allCounts.map((count) => count.toString()).toList();

  ColorGroup get colorGroup => defaultColorCodes[colorGroupName]!;

  void pushNumber(String n) {
    if (text.length > 10) return;
    if (text.isEmpty && n == "0") return;
    text += n;
    notifyListeners();
  }

  void popNumber() {
    if (text.isEmpty) return;
    text = text.substring(0, text.length - 1);
    notifyListeners();
  }

  void clearText() {
    text = "";
    notifyListeners();
  }

  void cycleCount() {
    int idx = allCounts.indexOf(count);
    count = allCounts[(idx + 1) % allCounts.length];
    notifyListeners();
  }

  void cylceColorGroup() {
    int idx = allColorGroups.indexOf(colorGroupName);
    colorGroupName = allColorGroups[(idx + 1) % allColorGroups.length];
    notifyListeners();
  }

  String getName(int idx) {
    return idx == -1 ? "_" : colorGroup.get(idx - 1).name;
  }

  Color getColor(int idx) {
    return idx == -1 ? Std.color.black : colorGroup.get(idx - 1).color;
  }
}
