import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/custom/custom_container.dart';

class DataContainerRow extends StatelessWidget {
  const DataContainerRow({
    super.key,
    required this.dataName,
    required this.data,
    this.color,
    this.textSize,
  });

  final String dataName;
  final String data;
  final Color? color;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Padding(
        padding: Std.padding.all10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              dataName,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: textSize ?? 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  data,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: textSize ?? 20,
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
