// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class StdSpace {
  SizedBox get zero => const SizedBox(height: 0, width: 0);

  SizedBox get H5 => const SizedBox(height: 5);
  SizedBox get H10 => const SizedBox(height: 10);
  SizedBox get H15 => const SizedBox(height: 15);
  SizedBox get H20 => const SizedBox(height: 20);
  SizedBox get H50 => const SizedBox(height: 50);
  SizedBox get H100 => const SizedBox(height: 100);
  SizedBox get H200 => const SizedBox(height: 200);

  SizedBox get W5 => const SizedBox(width: 5);
  SizedBox get W10 => const SizedBox(width: 10);
  SizedBox get W15 => const SizedBox(width: 15);
  SizedBox get W20 => const SizedBox(width: 20);
  SizedBox get W50 => const SizedBox(width: 50);
  SizedBox get W100 => const SizedBox(width: 100);
  SizedBox get W200 => const SizedBox(width: 200);

  Widget line(Color color, double h) => Container(
        color: color,
        height: h,
      );
}
