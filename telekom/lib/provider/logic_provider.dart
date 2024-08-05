import 'package:flutter/material.dart';
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

  void prevThread() => notify(() => threadCount.previous());
  void nextThread() => notify(() => threadCount.next());

  void prevCode() => notify(() => colorCode.previous());
  void nextCode() => notify(() => colorCode.next());
  void setCode(String code) => notify(() => colorCode.set(code));
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

  void next() {
    int idx = allCounts.indexOf(count);
    count = allCounts[(idx + 1) % allCounts.length];
  }

  void previous() {
    int idx = allCounts.indexOf(count);
    count = allCounts[(idx - 1) % allCounts.length];
  }
}

class LogicColorCode {
  String code = "tia";
  List<ColorCode> codes = getCodes();

  List<String> get codeNames => codes.map((code) => code.name).toList(); // ["tia", "tkf"]
  ColorCode get colorCode => codes.first;
  bool get hasCodes => codes.isNotEmpty;

  static List<ColorCode> getCodes() {
    return defaultColorCodes;
  }

  void loadCodes() {
    codes = LogicColorCode.getCodes();
  }

  ColorCode? get(int idx) {
    if (idx < 0 || idx >= codes.length) return null;
    return codes.elementAt(idx);
  }

  void set(String code) {
    this.code = code;
  }

  String getName(int idx) {
    return idx == -1 ? "_" : colorCode.get(idx - 1).name;
  }

  Color getColor(int idx) {
    return idx == -1 ? Std.color.transparent : colorCode.get(idx - 1).color;
  }

  void next() {
    int idx = codeNames.indexOf(code);
    code = codeNames[(idx + 1 + codeNames.length) % codeNames.length];
  }

  void previous() {
    int idx = codeNames.indexOf(code);
    code = codeNames[(idx - 1 + codeNames.length) % codeNames.length];
  }
}
