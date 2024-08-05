import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:telekom/functions/width.dart';

import 'package:telekom/model/color_code.dart';
import 'package:telekom/provider/color_codes_provider.dart';
import 'package:telekom/provider/logic_provider.dart';
import 'package:telekom/provider/theme_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/custom/backdrop_container.dart';
import 'package:telekom/ui/pages/overview/new-code-dialog/new_code_dialog.dart';

class ColorCodeItem extends StatelessWidget {
  final ColorCode? code;

  const ColorCodeItem({super.key, this.code});

  @override
  Widget build(BuildContext context) {
    final colorCodesProvider = context.watch<ColorCodesProvider>();
    final logicProvider = context.watch<LogicProvider>();
    final themeProvider = context.watch<ThemeProvider>();

    final selected = colorCodesProvider.code == code;
    final hasCode = code != null;

    return Slidable(
      startActionPane: action(),
      child: GestureDetector(
        onTap: () {
          if (hasCode) {
            colorCodesProvider.set(code!);
            logicProvider.setCode(code!.name);
          } else {
            final provider = context.read<ColorCodesProvider>();

            Get.dialog(
              const NewCodeDialog(),
              barrierColor: Std.color.transparent,
            );
          }
        },
        child: BackdropContainer(
          width: width(1, context),
          padding: Std.padding.all10,
          child: code != null
              ? Text(
                  "${colorCodesProvider.codes.indexOf(code!) + 1}. ${code!.name.toUpperCase()}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: selected ? themeProvider.highlight : themeProvider.text,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                )
              : Icon(
                  Std.icon.add,
                  color: themeProvider.text,
                  size: 25,
                ),
        ),
      ),
    );
  }

  ActionPane action() {
    return ActionPane(
      motion: const DrawerMotion(),
      children: [
        SlidableAction(
          onPressed: (context) {},
          backgroundColor: const Color(0xFFFE4A49),
          foregroundColor: Colors.white,
          icon: Icons.delete,
          label: 'Delete',
        ),
      ],
    );
  }
}
