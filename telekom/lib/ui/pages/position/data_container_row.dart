import 'package:flutter/material.dart';
import 'package:telekom/functions/width.dart';
import 'package:telekom/static/std/std.dart';

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
