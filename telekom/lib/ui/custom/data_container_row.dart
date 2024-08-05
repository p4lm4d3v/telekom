import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/provider/theme_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/custom/backdrop_container.dart';

class DataContainerRow extends StatelessWidget {
  final String dataName;
  final String data;
  final Color? color;
  final double? textSize;
  final bool canHaveEmptyData;

  final EdgeInsets? margin;
  final EdgeInsets? padding;

  final void Function()? onTap;
  final void Function()? leftDrag;
  final void Function()? rightDrag;

  final double? width;
  final double? height;

  const DataContainerRow({
    super.key,
    required this.dataName,
    required this.data,
    this.color,
    this.textSize,
    this.canHaveEmptyData = false,
    this.margin,
    this.padding,
    this.onTap,
    this.leftDrag,
    this.rightDrag,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return BackdropContainer(
      width: width,
      height: height,
      margin: margin,
      padding: padding ?? Std.padding.all10,
      onTap: onTap,
      leftDrag: leftDrag,
      rightDrag: rightDrag,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            dataName,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: themeProvider.text,
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
                  color: themeProvider.text,
                  fontWeight: FontWeight.bold,
                  fontSize: textSize ?? 20,
                ),
              ),
              Visibility(
                visible: canHaveEmptyData,
                child: Std.space.W10,
              ),
              Visibility(
                visible: color != null && data != "_" && !canHaveEmptyData,
                child: Std.space.W10,
              ),
              Visibility(
                visible: color != null && data != "_",
                child: Container(
                  padding: Std.padding.all10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: color ?? Std.color.white,
                    border: Border.all(
                      color: themeProvider.choose(Std.color.transparent, Std.color.black),
                      width: 2,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
