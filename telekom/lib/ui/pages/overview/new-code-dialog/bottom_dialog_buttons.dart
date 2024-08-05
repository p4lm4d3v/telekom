import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'package:telekom/model/stage.dart';
import 'package:telekom/provider/color_codes_provider.dart';
import 'package:telekom/provider/theme_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/custom/backdrop_container.dart';

class BottomDialogButtons extends StatelessWidget {
  const BottomDialogButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final colorCodesProvider = context.watch<ColorCodesProvider>();
    final themeProvider = context.watch<ThemeProvider>();

    return Row(
      children: [
        BackdropContainer(
          flex: 1,
          onLongPress: () {
            Get.back();
            colorCodesProvider.clearNew();
          },
          onTap: () {
            if (colorCodesProvider.currStage == Stage.first) {
              Get.back();
              colorCodesProvider.clearNew();
            } else {
              colorCodesProvider.prevStage();
            }
          },
          padding: Std.padding.all10,
          child: Text(
            "Nazad",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: themeProvider.text,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        Std.space.W10,
        BackdropContainer(
          flex: 1,
          onTap: () {
            if (colorCodesProvider.currStage == Stage.third) {
              Get.back();
              colorCodesProvider.addNewCode();
              colorCodesProvider.clearNew();
            } else {
              colorCodesProvider.nextStage();
            }
          },
          padding: Std.padding.all10,
          child: Text(
            "Dalje",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: themeProvider.text,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
