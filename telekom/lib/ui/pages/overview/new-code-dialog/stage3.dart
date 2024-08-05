import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/functions/width.dart';
import 'package:telekom/model/clr.dart';
import 'package:telekom/provider/color_codes_provider.dart';
import 'package:telekom/provider/theme_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/custom/backdrop_container.dart';

class Stage3 extends StatelessWidget {
  const Stage3({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final colorCodesProvider = context.watch<ColorCodesProvider>();

    return BackdropContainer(
      flex: 1,
      width: width(1, context),
      padding: Std.padding.all10,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: colorCodesProvider.newColors.length,
        itemBuilder: (context, idx) {
          Clr clr = colorCodesProvider.newColors[idx];

          return Padding(
            padding: Std.padding.all10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${idx + 1}. ${clr.name}",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: themeProvider.text,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Std.space.W10,
                Container(
                  padding: Std.padding.all10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: clr.color,
                    border: Border.all(
                      color: themeProvider.choose(Std.color.invPrim, Std.color.black),
                      width: 2,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, idx) => Padding(
          padding: Std.padding.horizontal15,
          child: Std.space.line(color: themeProvider.secondary),
        ),
      ),
    );
  }
}
