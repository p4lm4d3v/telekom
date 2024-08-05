import 'package:flutter/material.dart';

class StdColor {
  Color get black => const Color(0xff000000);
  Color get white => const Color(0xffffffff);

  Color get transparent => Colors.transparent;

  Color get highlight => const Color(0xffff1c40);

  Color get primaryLight => const Color(0xfff1f2f3);
  Color get secondaryLight => const Color(0xffcacbcc);
  Color get tertiaryLight => const Color(0xffcfd0d1);

  Color get primaryDark => const Color(0xff1f2223); // 0xff0d1117
  Color get secondaryDark => const Color(0xff181a1b); // 0xff292e36
  Color get tertiaryDark => const Color(0xff505a66);

  Color get invPrim => const Color(0xff3f3f3f);
}
