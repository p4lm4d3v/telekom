import 'dart:ui';

import 'package:telekom/model/clr.dart';
import 'package:telekom/model/color_code.dart';

final defaultColorCodes = {
  "tia": ColorCode(id: "tia", colors: {
    "blue": Clr(id: "blue", name: "Plava", color: const Color(0xff0070c2)),
    "orange": Clr(id: "orange", name: "Narandžasta", color: const Color(0xfff8974a)),
    "green": Clr(id: "green", name: "Zelena", color: const Color(0xff02af55)),
    "brown": Clr(id: "brown", name: "Braon", color: const Color(0xff9a4608)),
    "gray": Clr(id: "gray", name: "Siva", color: const Color(0xff808080)),
    "white": Clr(id: "white", name: "Bela", color: const Color(0xffffffff)),
    "red": Clr(id: "red", name: "Crvena", color: const Color(0xfffd0002)),
    "black": Clr(id: "black", name: "Crna", color: const Color(0xff010101)),
    "yellow": Clr(id: "yellow", name: "Žuta", color: const Color(0xffffff00)),
    "purple": Clr(id: "purple", name: "Ljubičasta", color: const Color(0xff6b2cae)),
    "pink": Clr(id: "pink", name: "Roze", color: const Color(0xfffd64cc)),
    "lightBlue": Clr(id: "lightBlue", name: "Svetlo Plava", color: const Color(0xff02b0ed)),
  }),
  "tkf": ColorCode(id: "tkf", colors: {
    "red": Clr(id: "red", name: "Crvena", color: const Color(0xfffd0002)),
    "green": Clr(id: "green", name: "Zelena", color: const Color(0xff02af55)),
    "blue": Clr(id: "blue", name: "Plava", color: const Color(0xff0070c2)),
    "yellow": Clr(id: "yellow", name: "Žuta", color: const Color(0xffffff00)),
    "white": Clr(id: "white", name: "Bela", color: const Color(0xffffffff)),
    "gray": Clr(id: "gray", name: "Siva", color: const Color(0xff808080)),
    "brown": Clr(id: "brown", name: "Braon", color: const Color(0xff9a4608)),
    "purple": Clr(id: "purple", name: "Ljubičasta", color: const Color(0xff6b2cae)),
    "orange": Clr(id: "orange", name: "Narandžasta", color: const Color(0xfff8974a)),
    "black": Clr(id: "black", name: "Crna", color: const Color(0xff010101)),
    "pink": Clr(id: "pink", name: "Roze", color: const Color(0xfffd64cc)),
    "lightBlue": Clr(id: "lightBlue", name: "Svetlo Plava", color: const Color(0xff02b0ed)),
  }),
};
