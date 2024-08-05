import 'package:flutter/material.dart';

Size size(double widthFraction, double heightFraction, BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Size(
    size.width * widthFraction,
    size.height * heightFraction,
  );
}
