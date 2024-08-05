import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/model/clr.dart';
import 'package:telekom/provider/color_codes_provider.dart';
import 'package:telekom/provider/theme_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/custom/backdrop_container.dart';
import 'package:telekom/ui/custom/data_container_row.dart';

class ColorCodeDetails extends StatelessWidget {
  const ColorCodeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final colorCodesProvider = context.watch<ColorCodesProvider>();
    final themeProvider = context.watch<ThemeProvider>();

    return Padding(
      padding: Std.padding.all10,
      child: Column(
        children: [
          DataContainerRow(
            padding: Std.padding.h20v10,
            textSize: 15,
            dataName: "Ime Koda: ",
            data: colorCodesProvider.code.name.toUpperCase(),
          ),
          Expanded(
            child: BackdropContainer(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: colorCodesProvider.code.colors.length,
                itemBuilder: (context, idx) {
                  Clr clr = colorCodesProvider.code.colors.toList()[idx];
                  return Padding(
                    padding: Std.padding.h20v7,
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
                              color: themeProvider.choose(Std.color.transparent, Std.color.black),
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
            ),
          ),
        ],
      ),
    );
  }
}
