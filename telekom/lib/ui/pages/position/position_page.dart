import 'package:flutter/material.dart';
import 'package:numpad_layout/widgets/numpad.dart';
import 'package:provider/provider.dart';
import 'package:telekom/logic/logic_provider.dart';
import 'package:telekom/logic/colors/tia.dart';
import 'package:telekom/static/std.dart';
import 'package:telekom/ui/pages/position/data_container_row.dart';

class PositionPage extends StatelessWidget {
  const PositionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logicProvider = context.watch<LogicProvider>();

    final pos = logicProvider.pos == -1 ? "_" : "${logicProvider.pos}";
    final id = logicProvider.id == -1 ? "_" : "${logicProvider.id}";
    final row = logicProvider.row == -1 ? "_" : "${logicProvider.row}";
    final colorText = logicProvider.color == Tia.tia ? "_" : logicProvider.color.toString();
    final color = logicProvider.color == Tia.tia ? Std.color.black : logicProvider.color.color;

    return Scaffold(
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
                      DataContainerRow(dataName: "Boja: ", data: colorText, color: color),
                    ],
                  ),
                ),
              ),
              Std.space.H20,
              NumPad(
                onType: (text) => logicProvider.add(text),
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                leftWidget: IconButton(
                  onPressed: logicProvider.clear,
                  icon: Icon(
                    Std.icon.block,
                    color: Std.color.black,
                    weight: 50,
                  ),
                ),
                rightWidget: IconButton(
                  onPressed: logicProvider.pop,
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
