import 'dart:ui';

import 'package:telekom/logic/colors/color_code.dart';

enum Tkf implements ColorCode {
  tkf(Color(0x00000000)),
  red(Color(0xfffd0002)),
  green(Color(0xff02af55)),
  blue(Color(0xff0070c2)),
  yellow(Color(0xffffff00)),
  white(Color(0xffffffff)),
  gray(Color(0xff808080)),
  brown(Color(0xff9a4608)),
  purple(Color(0xff6b2cae)),
  orange(Color(0xfff8974a)),
  black(Color(0xff010101)),
  pink(Color(0xfffd64cc)),
  lightBlue(Color(0xff02b0ed));

  final Color color;
  const Tkf(this.color);

  Tkf get(int idx) {
    switch (idx) {
      case 0:
        return Tkf.red;
      case 1:
        return Tkf.green;
      case 2:
        return Tkf.blue;
      case 3:
        return Tkf.yellow;
      case 4:
        return Tkf.white;
      case 5:
        return Tkf.gray;
      case 6:
        return Tkf.brown;
      case 7:
        return Tkf.purple;
      case 8:
        return Tkf.orange;
      case 9:
        return Tkf.black;
      case 10:
        return Tkf.pink;
      case 11:
        return Tkf.lightBlue;
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
