import 'package:telekom/model/color_code.dart';

class ColorGroup {
  Map<String, ColorCode> colors;

  ColorGroup({required this.colors});

  ColorCode get(int idx) {
    return colors.values.toList()[idx];
  }
}
