import 'package:flutter/material.dart';
import 'package:telekom/functions/width.dart';
import 'package:telekom/static/std/std.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  final bool selected;

  const CustomContainer({super.key, this.child, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Std.padding.vertical5,
      width: width(context, 1),
      decoration: BoxDecoration(
        color: Std.color.primary,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: selected ? Std.color.highlight : Std.color.tertiary,
            blurRadius: 2,
            spreadRadius: 1,
            offset: const Offset(0, 2.5),
          )
        ],
      ),
      child: child,
    );
  }
}
