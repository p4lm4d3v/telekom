import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/functions/width.dart';
import 'package:telekom/provider/logic_provider.dart';
import 'package:telekom/static/std/std.dart';

class ColorGroupWidget extends StatelessWidget {
  const ColorGroupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final logicProvider = context.watch<LogicProvider>();

    return GestureDetector(
      onTap: logicProvider.cylceColorGroup,
      child: Container(
        width: width(context, .4),
        margin: Std.padding.vertical5,
        padding: Std.padding.symmetric(10, 5),
        decoration: BoxDecoration(
          color: Std.color.primary,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Std.color.tertiary,
              blurRadius: 2,
              spreadRadius: 2.5,
              offset: const Offset(0, 2.5),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Kod: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              logicProvider.colorGroupName.toUpperCase(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
