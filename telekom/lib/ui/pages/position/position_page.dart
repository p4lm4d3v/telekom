import 'package:flutter/material.dart';
import 'package:numpad_layout/widgets/numpad.dart';
import 'package:provider/provider.dart';

import 'package:telekom/provider/logic_provider.dart';
import 'package:telekom/provider/theme_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/custom/data_container_row.dart';
import 'package:telekom/ui/pages/position/no_codes_widget.dart';

class PositionPage extends StatelessWidget {
  const PositionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logicProvider = context.watch<LogicProvider>();
    final themeProvider = context.watch<ThemeProvider>();

    final pos = logicProvider.pos == -1 ? "_" : "${logicProvider.pos}";
    final id = logicProvider.id == -1 ? "_" : "${logicProvider.id}";
    final row = logicProvider.row == -1 ? "_" : "${logicProvider.row}";

    final colorName = logicProvider.colorCode.getName(logicProvider.id);
    final colorValue = logicProvider.colorCode.getColor(logicProvider.id);
    final codeName = logicProvider.colorCode.code.toUpperCase();

    if (!logicProvider.colorCode.hasCodes) {
      return const NoCodesWidget();
    } else {
      return Scaffold(
        backgroundColor: themeProvider.primary,
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
                        DataContainerRow(
                          padding: Std.padding.h10v5,
                          canHaveEmptyData: true,
                          dataName: "Pozicija: ",
                          data: pos,
                        ),
                        DataContainerRow(
                          padding: Std.padding.h10v5,
                          canHaveEmptyData: true,
                          dataName: "Red: ",
                          data: row,
                        ),
                        DataContainerRow(
                          padding: Std.padding.h10v5,
                          canHaveEmptyData: true,
                          dataName: "Broj: ",
                          data: id,
                        ),
                        DataContainerRow(
                          padding: Std.padding.h10v5,
                          canHaveEmptyData: true,
                          dataName: "Boja: ",
                          data: colorName,
                          color: colorValue,
                        ),
                        Std.space.H10,
                        DataContainerRow(
                          padding: Std.padding.h10v5,
                          dataName: "Niti: ",
                          data: "${logicProvider.threadCount.count.get()}",
                          leftDrag: logicProvider.prevThread,
                          rightDrag: logicProvider.nextThread,
                          onTap: logicProvider.nextThread,
                        ),
                        DataContainerRow(
                          padding: Std.padding.h10v5,
                          dataName: "Kod: ",
                          data: codeName,
                          leftDrag: logicProvider.prevCode,
                          rightDrag: logicProvider.nextCode,
                          onTap: logicProvider.nextCode,
                        ),
                      ],
                    ),
                  ),
                ),
                Std.space.H20,
                NumPad(
                  onType: (text) => logicProvider.pushNumber(text),
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  numberStyle: TextStyle(
                    color: themeProvider.text,
                    fontSize: 30,
                  ),
                  leftWidget: IconButton(
                    onPressed: logicProvider.clearText,
                    icon: Icon(
                      Std.icon.block,
                      color: themeProvider.text,
                    ),
                  ),
                  rightWidget: IconButton(
                    onPressed: logicProvider.popNumber,
                    icon: Icon(
                      Std.icon.backspace,
                      color: themeProvider.text,
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
}
