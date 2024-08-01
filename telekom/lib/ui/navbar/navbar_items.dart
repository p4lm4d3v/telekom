import 'package:flutter/material.dart';
import 'package:telekom/static/std/std.dart';

import 'navbar_item.dart';

TextStyle textStyle = const TextStyle(
  fontWeight: FontWeight.bold,
);

List<NavBarItem> navBarItems = [
  NavBarItem(
    Std.icon.tubes,
    'Pregled',
    textStyle,
  ),
  NavBarItem(
    Std.icon.algorithm,
    'Pozicija',
    textStyle,
  ),
  NavBarItem(
    Std.icon.setting,
    'Podešavanja',
    textStyle,
  ),
];
