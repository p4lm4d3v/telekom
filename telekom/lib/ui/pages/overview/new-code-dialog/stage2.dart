import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/functions/width.dart';
import 'package:telekom/model/thread_count.dart';
import 'package:telekom/provider/color_codes_provider.dart';
import 'package:telekom/provider/theme_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/custom/backdrop_container.dart';

class Stage2 extends StatelessWidget {
  const Stage2({super.key});

  @override
  Widget build(BuildContext context) {
    final colorCodesProvider = context.watch<ColorCodesProvider>();
    final themeProvider = context.watch<ThemeProvider>();

    return Column(
      children: [
        BackdropContainer(
          onTap: () => colorCodesProvider.setNewCount(ThreadCount.six),
          padding: Std.padding.all10,
          width: width(1, context),
          child: Text(
            "6",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: colorCodesProvider.newCount == ThreadCount.six ? themeProvider.highlight : themeProvider.text,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        BackdropContainer(
          onTap: () => colorCodesProvider.setNewCount(ThreadCount.twelve),
          padding: Std.padding.all10,
          width: width(1, context),
          child: Text(
            "12",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: colorCodesProvider.newCount == ThreadCount.twelve ? themeProvider.highlight : themeProvider.text,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        BackdropContainer(
          onTap: () => colorCodesProvider.setNewCount(ThreadCount.twentyFour),
          padding: Std.padding.all10,
          width: width(1, context),
          child: Text(
            "24",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: colorCodesProvider.newCount == ThreadCount.twentyFour ? themeProvider.highlight : themeProvider.text,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
