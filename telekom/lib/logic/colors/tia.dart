import 'dart:ui';

import 'package:telekom/logic/colors/color_code.dart';

enum Tia implements ColorCode {
  tia(Color(0x00000000)),
  blue(Color(0xff0070c2)),
  orange(Color(0xfff8974a)),
  green(Color(0xff02af55)),
  brown(Color(0xff9a4608)),
  gray(Color(0xff808080)),
  white(Color(0xffffffff)),
  red(Color(0xfffd0002)),
  black(Color(0xff010101)),
  yellow(Color(0xffffff00)),
  purple(Color(0xff6b2cae)),
  pink(Color(0xfffd64cc)),
  lightBlue(Color(0xff02b0ed));

  final Color color;
  const Tia(this.color);

  Tia get(int idx) {
    switch (idx) {
      case 0:
        return Tia.blue;
      case 1:
        return Tia.orange;
      case 2:
        return Tia.green;
      case 3:
        return Tia.brown;
      case 4:
        return Tia.gray;
      case 5:
        return Tia.white;
      case 6:
        return Tia.red;
      case 7:
        return Tia.black;
      case 8:
        return Tia.yellow;
      case 9:
        return Tia.purple;
      case 10:
        return Tia.pink;
      case 11:
        return Tia.lightBlue;
    }
    throw Exception("Index out of range!");
  }

  @override
  String toString() {
    switch (name) {
      case "blue":
        return "Plava";
      case "orange":
        return "Narandžasta";
      case "green":
        return "Zelena";
      case "brown":
        return "Braon";
      case "gray":
        return "Siva";
      case "white":
        return "Bela";
      case "red":
        return "Crvena";
      case "black":
        return "Crna";
      case "yellow":
        return "Žuta";
      case "purple":
        return "Ljubičasta";
      case "pink":
        return "Roze";
      case "lightBlue":
        return "Svetlo Plava";
    }
    throw Exception("Index out of range!");
  }
}
