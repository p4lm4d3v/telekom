import 'package:flutter/material.dart';
import 'package:numpad_layout/widgets/numpad.dart';
import 'package:provider/provider.dart';
import 'package:telekom/functions/width.dart';
import 'package:telekom/logic/logic_provider.dart';
import 'package:telekom/logic/colors/tia.dart';
import 'package:telekom/static/std.dart';

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

class DataContainerRow extends StatelessWidget {
  const DataContainerRow({
    super.key,
    required this.dataName,
    required this.data,
    this.color,
  });

  final String dataName;
  final String data;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Std.padding.vertical5,
      width: width(context, 1),
      decoration: BoxDecoration(
        color: Std.color.primary,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Std.color.tertiary,
            blurRadius: 2,
            spreadRadius: 2.5,
            offset: const Offset(0, 2.5),
          )
        ],
      ),
      child: Padding(
        padding: Std.padding.all10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              dataName,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  data,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Std.space.W10,
                Visibility(
                  visible: color != null && data != "_",
                  child: Container(
                    padding: Std.padding.all10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: color ?? Std.color.white,
                      border: Border.all(
                        color: Std.color.black,
                        width: 1.5,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
