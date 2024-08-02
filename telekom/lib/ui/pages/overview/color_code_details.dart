import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/model/clr.dart';
import 'package:telekom/provider/color_codes_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/custom/custom_container.dart';
import 'package:telekom/ui/custom/data_container_row.dart';

class ColorCodeDetails extends StatelessWidget {
  const ColorCodeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final colorCodesProvider = context.watch<ColorCodesProvider>();

    return Padding(
      padding: Std.padding.all10,
      child: Column(
        children: [
          DataContainerRow(
            textSize: 15,
            dataName: "Ime Koda: ",
            data: colorCodesProvider.code.id.toUpperCase(),
          ),
          Expanded(
            child: CustomContainer(
              child: ListView.separated(
                itemBuilder: (context, idx) {
                  Clr clr = colorCodesProvider.code.colors.values.toList()[idx];
                  return Padding(
                    padding: Std.padding.symmetric(20, 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          clr.name,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
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
                              color: Std.color.black,
                              width: 1.5,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, idx) => Padding(
                  padding: Std.padding.horizontal15,
                  child: Std.space.line(color: Std.color.tertiary),
                ),
                itemCount: colorCodesProvider.code.colors.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
