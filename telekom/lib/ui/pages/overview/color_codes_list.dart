import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/provider/color_codes_provider.dart';
import 'package:telekom/provider/logic_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/pages/overview/color_code_item.dart';

class ColorCodesList extends StatelessWidget {
  const ColorCodesList({super.key});

  @override
  Widget build(BuildContext context) {
    final colorCodesProvider = context.watch<ColorCodesProvider>();
    final logicProvider = context.watch<LogicProvider>();

    final length = colorCodesProvider.codes.length;

    return Padding(
      padding: Std.padding.all10,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: length,
              itemBuilder: (context, idx) {
                // if (idx == 0) return const ColorCodeItem();

                final code = colorCodesProvider.codes[idx];
                return ColorCodeItem(code: code);
              },
            ),
          ),
          const ColorCodeItem(),
        ],
      ),
    );
  }
}
