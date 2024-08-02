import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/functions/width.dart';
import 'package:telekom/model/color_code.dart';
import 'package:telekom/provider/color_codes_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/custom/custom_container.dart';

class ColorCodeItem extends StatelessWidget {
  final ColorCode code;
  final int idx;

  const ColorCodeItem({
    super.key,
    required this.code,
    required this.idx,
  });

  @override
  Widget build(BuildContext context) {
    final colorCodesProvider = context.watch<ColorCodesProvider>();

    return GestureDetector(
      onTap: () => colorCodesProvider.set(code),
      child: CustomContainer(
        selected: colorCodesProvider.code == code,
        child: Padding(
          padding: Std.padding.all10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${idx + 1}. ${code.id.toUpperCase()}",
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
