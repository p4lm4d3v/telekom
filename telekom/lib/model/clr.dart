import 'dart:ui';

import 'package:telekom/static/std/std.dart';

class Clr {
  final String name;
  final Color color;

  Clr({
    required this.name,
    required this.color,
  });

  factory Clr.empty() {
    return Clr(
      name: "",
      color: Std.color.transparent,
    );
  }

  bool get isEmpty {
    return name == Clr.empty().name && color == Clr.empty().color;
  }

  factory Clr.fromJson(Map<String, dynamic> json) {
    return Clr(
      name: json['name'],
      color: Color(json['color']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'color': color.value,
    };
  }
}
