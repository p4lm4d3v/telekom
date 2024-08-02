import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:telekom/provider/logic_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/pages/overview/color_code_item.dart';

class ColorCodesList extends StatelessWidget {
  const ColorCodesList({super.key});

  @override
  Widget build(BuildContext context) {
    final logicProvider = context.watch<LogicProvider>();

    return Padding(
      padding: Std.padding.all10,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: logicProvider.colorCode.codes.length,
        itemBuilder: (context, idx) => ColorCodeItem(
          code: logicProvider.colorCode.get(idx),
          idx: idx,
        ),
      ),
    );
  }
}
