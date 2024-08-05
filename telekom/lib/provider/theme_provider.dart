import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:telekom/static/std/std.dart';

class ThemeProvider extends ChangeNotifier {
  bool dark;

  ThemeProvider(this.dark);

  void set(bool value) {
    dark = value;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: primary,
        statusBarColor: Std.color.transparent,
        statusBarIconBrightness: dark ? Brightness.light : Brightness.dark,
      ),
    );

    SharedPreferences.getInstance().then((prefs) {
      prefs.setBool("dark", value).then((_) {});
    });

    notifyListeners();
  }

  T choose<T>(T a, T b) {
    return dark ? a : b;
  }

  Color get text => dark ? Std.color.white : Std.color.black;
  Color get highlight => dark ? Std.color.highlight : Std.color.highlight;

  Color get primary => dark ? Std.color.primaryDark : Std.color.primaryLight;
  Color get secondary => dark ? Std.color.secondaryDark : Std.color.secondaryLight;
  Color get tertiary => dark ? Std.color.tertiaryDark : Std.color.tertiaryLight;
}
