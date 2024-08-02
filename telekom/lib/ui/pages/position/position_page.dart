import 'package:flutter/material.dart';
import 'package:numpad_layout/widgets/numpad.dart';
import 'package:provider/provider.dart';
import 'package:telekom/functions/width.dart';
import 'package:telekom/provider/logic_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/pages/position/color_code_widget.dart';
import 'package:telekom/ui/custom/data_container_row.dart';
import 'package:telekom/ui/pages/position/thead_count_widget.dart';

class PositionPage extends StatelessWidget {
  const PositionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logicProvider = context.watch<LogicProvider>();

    final pos = logicProvider.pos == -1 ? "_" : "${logicProvider.pos}";
    final id = logicProvider.id == -1 ? "_" : "${logicProvider.id}";
    final row = logicProvider.row == -1 ? "_" : "${logicProvider.row}";

    final colorName = logicProvider.colorCode.getName(logicProvider.id);
    final colorValue = logicProvider.colorCode.getColor(logicProvider.id);

    return !logicProvider.colorCode.hasCodes
        ? Center(
            child: SizedBox(
              width: width(context, .5),
              child: const Text(
                "Kodovi za boje nisu pronađeni!\nMolimo dodajte kodove u odeljku 'Kodovi'!",
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        : Scaffold(
            backgroundColor: Std.color.primary,
            body: SafeArea(
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: Std.padding.horizontal30,
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            DataContainerRow(dataName: "Pozicija: ", data: pos),
                            DataContainerRow(dataName: "Red: ", data: row),
                            DataContainerRow(dataName: "Broj: ", data: id),
                            DataContainerRow(dataName: "Boja: ", data: colorName, color: colorValue),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const TheadCountWidget(),
                                Std.space.W10,
                                const ColorGroupWidget(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Std.space.H20,
                    NumPad(
                      onType: (text) => logicProvider.pushNumber(text),
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      leftWidget: IconButton(
                        onPressed: logicProvider.clearText,
                        icon: Icon(
                          Std.icon.block,
                          color: Std.color.black,
                          weight: 50,
                        ),
                      ),
                      rightWidget: IconButton(
                        onPressed: logicProvider.popNumber,
                        icon: Icon(
                          Std.icon.backspace,
                          color: Std.color.black,
                          weight: 50,
                        ),
                      ),
                    ),
                    Std.space.H20,
                  ],
                ),
              ),
            ),
          );
  }
}
