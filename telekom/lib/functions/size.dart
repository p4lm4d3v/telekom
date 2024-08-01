import 'package:flutter/material.dart';

Size size(BuildContext context, widthPercentage, heightPercentage) {
  Size size = MediaQuery.of(context).size;
  return Size(
    size.width * widthPercentage,
    size.height * heightPercentage,
  );
}
