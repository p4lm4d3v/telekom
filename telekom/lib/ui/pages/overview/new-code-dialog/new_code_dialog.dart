import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:telekom/functions/height.dart';
import 'package:telekom/functions/width.dart';
import 'package:telekom/provider/color_codes_provider.dart';
import 'package:telekom/provider/theme_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/custom/backdrop_container.dart';
import 'package:telekom/ui/pages/overview/new-code-dialog/bottom_dialog_buttons.dart';
import 'package:telekom/ui/pages/overview/new-code-dialog/dialog_title.dart';
import 'package:telekom/ui/pages/overview/new-code-dialog/stage1.dart';
import 'package:telekom/ui/pages/overview/new-code-dialog/stage2.dart';
import 'package:telekom/ui/pages/overview/new-code-dialog/stage3.dart';

class NewCodeDialog extends StatelessWidget {
  const NewCodeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final colorCodeProvider = context.watch<ColorCodesProvider>();
    final themeProvider = context.watch<ThemeProvider>();

    final stage = colorCodeProvider.currStage.get();

    final heights = [
      height(.2, context),
      height(.35, context),
      height(.6, context),
    ];

    return Scaffold(
      backgroundColor: Std.color.primaryDark,
      body: Center(
        child: BackdropContainer(
          width: width(.9, context),
          height: heights[stage - 1],
          padding: Std.padding.all10,
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const DialogTitle(),
                switch (stage) {
                  1 => const Stage1(),
                  2 => const Stage2(),
                  3 => const Stage3(),
                  _ => const Placeholder(),
                },
                const BottomDialogButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
