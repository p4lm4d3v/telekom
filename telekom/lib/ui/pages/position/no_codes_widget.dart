import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/functions/width.dart';
import 'package:telekom/provider/theme_provider.dart';

class NoCodesWidget extends StatelessWidget {
  const NoCodesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Center(
      child: SizedBox(
        width: width(.5, context),
        child: Text(
          "Kodovi za boje nisu pronađeni!\nMolimo dodajte kodove u odeljku 'Kodovi'!",
          textAlign: TextAlign.center,
          softWrap: true,
          style: TextStyle(
            color: themeProvider.text,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
