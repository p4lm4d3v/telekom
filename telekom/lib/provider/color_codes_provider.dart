import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telekom/model/clr.dart';
import 'package:telekom/model/color_code.dart';
import 'package:telekom/model/stage.dart';
import 'package:telekom/model/thread_count.dart';
import 'package:telekom/static/default_color_groups.dart';
import 'package:telekom/static/keys.dart';
import 'package:telekom/static/std/std.dart';

class ColorCodesProvider extends ChangeNotifier {
  void notify(void Function() function) {
    function();
    notifyListeners();
  }

  // Handling of the color codes loaded and set from and to the local storage
  final List<ColorCode> codes = [];

  Future<void> get() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? json = prefs.getString(Keys.codes);

    Logger().i(codes.map((code) => code.toJson()));

    if (json != null) {
      final List<dynamic> jsonList = jsonDecode(json);
      codes.clear();
      final List<ColorCode> newCodes = jsonList.map((item) => ColorCode.fromJson(item)).toList();
      codes.addAll(newCodes);
      notifyListeners();
    } else {
      codes.clear();
      codes.addAll(defaultColorCodes);
      notifyListeners();
    }
  }

  Future<void> put() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String json = jsonEncode(codes.map((code) => code.toJson()).toList());
    await prefs.setString(Keys.codes, json);
  }

  // Handling of the selected color code to use in the app
  // List<ColorCode> codes = defaultColorCodes;
  ColorCode code = defaultColorCodes.first;

  void set(ColorCode code) {
    this.code = code;
    notifyListeners();
  }

  // Handling the creation of a new code
  Stage currStage = Stage.first;

  void nextStage() {
    currStage = currStage.next();
    notifyListeners();
  }

  void prevStage() {
    currStage = currStage.prev();
    notifyListeners();
  }

  TextEditingController newNameController = TextEditingController();
  ThreadCount newCount = ThreadCount.twelve;
  List<Clr> newColors = List.generate(
    ThreadCount.twelve.get(),
    (_) => Clr(
      name: "Highlight",
      color: Std.color.highlight,
    ),
  );

  void clearNew() {
    currStage = Stage.first;
    newNameController = TextEditingController();
    newCount = ThreadCount.twelve;
    newColors = List.generate(
      ThreadCount.twelve.get(),
      (_) => Clr(
        name: "Highlight",
        color: Std.color.highlight,
      ),
    );
    notifyListeners();
  }

  void setNewName(String newName) => notify(() => newNameController.value = TextEditingValue(text: newName));
  void setNewCount(ThreadCount newCount) => notify(() => this.newCount = newCount);

  void addNewCode() {
    final newCode = ColorCode(name: newNameController.text.trim(), colors: newColors);
    codes.add(newCode);
    put();
    get();
  }
}
