import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:telekom/functions/width.dart';
import 'package:telekom/provider/color_codes_provider.dart';
import 'package:telekom/provider/theme_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/custom/backdrop_container.dart';

class Stage1 extends StatelessWidget {
  const Stage1({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final colorCodeProvider = context.watch<ColorCodesProvider>();

    return BackdropContainer(
      width: width(1, context),
      padding: Std.padding.all10,
      child: TextFormField(
        cursorColor: themeProvider.highlight,
        textAlign: TextAlign.center,
        controller: colorCodeProvider.newNameController,
        decoration: InputDecoration.collapsed(
          hintText: "Ime Koda",
          hintStyle: TextStyle(
            color: themeProvider.choose(
              Std.color.tertiaryDark,
              Std.color.tertiaryLight,
            ),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        style: TextStyle(
          color: themeProvider.text,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}
