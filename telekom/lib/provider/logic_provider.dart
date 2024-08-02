import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:telekom/model/color_code.dart';
import 'package:telekom/model/thread_count.dart';
import 'package:telekom/static/default_color_groups.dart';
import 'package:telekom/static/std/std.dart';

class LogicProvider extends ChangeNotifier {
  final input = LogicInput();
  final threadCount = LogicTheadCount();
  final colorCode = LogicColorCode();

  int get pos => int.tryParse(input.text) ?? -1;
  bool get valid => pos != -1;
  int get row => valid ? (pos - 1) ~/ 12 + 1 : -1;
  int get id => valid
      ? pos % 12 == 0
          ? 12
          : pos % 12
      : -1;

  void notify(void Function() function) {
    function();
    notifyListeners();
  }

  void pushNumber(String n) => notify(() => input.push(n));
  void popNumber() => notify(() => input.pop());
  void clearText() => notify(() => input.clear());

  void cycleTheadCount() => notify(() => threadCount.cycle());

  void cycleColorCode() => notify(() => colorCode.cycle());
}

class LogicInput {
  String text = "";

  void push(String n) {
    if (text.length > 10) return;
    if (text.isEmpty && n == "0") return;
    text += n;
    int num = int.parse(text);
    if (num > 144) {
      text = text.substring(0, text.length - 1);
    }
  }

  void pop() {
    if (text.isEmpty) return;
    text = text.substring(0, text.length - 1);
  }

  void clear() {
    text = "";
  }
}

class LogicTheadCount {
  ThreadCount count = ThreadCount.twelve;
  List<ThreadCount> allCounts = [
    ThreadCount.six,
    ThreadCount.twelve,
    ThreadCount.twentyFour,
  ];

  String get countText => count.toString();
  List<String> get allCountTexts => allCounts.map((count) => count.toString()).toList();

  void cycle() {
    int idx = allCounts.indexOf(count);
    count = allCounts[(idx + 1) % allCounts.length];
  }
}

class LogicColorCode {
  String code = "tia";
  Map<String, ColorCode> codes = getCodes();

  List<String> get codeNames => codes.keys.toList(); // ["tia", "tkf"]
  ColorCode get colorCode => codes[code]!;
  bool get hasCodes => codes.isNotEmpty;

  static Map<String, ColorCode> getCodes() {
    return defaultColorCodes;
  }

  void loadCodes() {
    codes = LogicColorCode.getCodes();
  }

  ColorCode get(int idx) {
    return codes.values.elementAt(idx);
  }

  String getName(int idx) {
    return idx == -1 ? "_" : colorCode.get(idx - 1).name;
  }

  Color getColor(int idx) {
    return idx == -1 ? Std.color.transparent : colorCode.get(idx - 1).color;
  }

  void cycle() {
    int idx = codeNames.indexOf(code);
    code = codeNames[(idx + 1) % codeNames.length];
  }
}
