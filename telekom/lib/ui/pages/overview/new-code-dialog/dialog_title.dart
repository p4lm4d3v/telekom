import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/provider/color_codes_provider.dart';
import 'package:telekom/provider/theme_provider.dart';

class DialogTitle extends StatelessWidget {
  const DialogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final colorCodeProvider = context.watch<ColorCodesProvider>();

    final titles = [
      "Ime Koda",
      "Broj Niti",
      "Boje Koda",
    ];

    return Text(
      titles[colorCodeProvider.currStage.get() - 1],
      textAlign: TextAlign.center,
      style: TextStyle(
        color: themeProvider.text,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
