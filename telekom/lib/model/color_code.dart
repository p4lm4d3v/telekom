import 'package:telekom/model/clr.dart';

class ColorCode {
  final String name;
  final List<Clr> colors;

  ColorCode({
    required this.name,
    required this.colors,
  });

  factory ColorCode.fromJson(Map<String, dynamic> json) {
    return ColorCode(
      name: json['name'],
      colors: (json['colors'] as List)
          .map(
            (item) => Clr.fromJson(item),
          )
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'colors': colors.map((item) => item.toJson()).toList(),
    };
  }

  Clr get(int idx) {
    return colors.elementAt(idx);
  }
}
