import 'dart:ui';

import 'package:telekom/model/color_code.dart';
import 'package:telekom/model/color_group.dart';

final defaultColorCodes = {
  "tia": ColorGroup(colors: {
    "blue": ColorCode(id: "blue", name: "Plava", color: const Color(0xff0070c2)),
    "orange": ColorCode(id: "orange", name: "Narandžasta", color: const Color(0xfff8974a)),
    "green": ColorCode(id: "green", name: "Zelena", color: const Color(0xff02af55)),
    "brown": ColorCode(id: "brown", name: "Braon", color: const Color(0xff9a4608)),
    "gray": ColorCode(id: "gray", name: "Siva", color: const Color(0xff808080)),
    "white": ColorCode(id: "white", name: "Bela", color: const Color(0xffffffff)),
    "red": ColorCode(id: "red", name: "Crvena", color: const Color(0xfffd0002)),
    "black": ColorCode(id: "black", name: "Crna", color: const Color(0xff010101)),
    "yellow": ColorCode(id: "yellow", name: "Žuta", color: const Color(0xffffff00)),
    "purple": ColorCode(id: "purple", name: "Ljubičasta", color: const Color(0xff6b2cae)),
    "pink": ColorCode(id: "pink", name: "Roze", color: const Color(0xfffd64cc)),
    "lightBlue": ColorCode(id: "lightBlue", name: "Svetlo Plava", color: const Color(0xff02b0ed)),
  }),
  "tkf": ColorGroup(colors: {
    "red": ColorCode(id: "red", name: "Crvena", color: const Color(0xfffd0002)),
    "green": ColorCode(id: "green", name: "Zelena", color: const Color(0xff02af55)),
    "blue": ColorCode(id: "blue", name: "Plava", color: const Color(0xff0070c2)),
    "yellow": ColorCode(id: "yellow", name: "Žuta", color: const Color(0xffffff00)),
    "white": ColorCode(id: "white", name: "Bela", color: const Color(0xffffffff)),
    "gray": ColorCode(id: "gray", name: "Siva", color: const Color(0xff808080)),
    "brown": ColorCode(id: "brown", name: "Braon", color: const Color(0xff9a4608)),
    "purple": ColorCode(id: "purple", name: "Ljubičasta", color: const Color(0xff6b2cae)),
    "orange": ColorCode(id: "orange", name: "Narandžasta", color: const Color(0xfff8974a)),
    "black": ColorCode(id: "black", name: "Crna", color: const Color(0xff010101)),
    "pink": ColorCode(id: "pink", name: "Roze", color: const Color(0xfffd64cc)),
    "lightBlue": ColorCode(id: "lightBlue", name: "Svetlo Plava", color: const Color(0xff02b0ed)),
  }),
};
