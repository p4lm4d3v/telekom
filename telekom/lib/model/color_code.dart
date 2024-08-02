import 'package:telekom/model/clr.dart';

class ColorCode {
  final String id;
  final Map<String, Clr> colors;

  ColorCode({
    required this.id,
    required this.colors,
  });

  Clr get(int idx) {
    return colors.values.elementAt(idx);
  }
}
