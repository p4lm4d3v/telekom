import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/provider/theme_provider.dart';
import 'package:telekom/static/std/std.dart';

class BackdropContainer extends StatelessWidget {
  final Widget? child;
  final bool selected;

  final double? width;
  final double? height;

  final EdgeInsets? margin;
  final EdgeInsets? padding;

  final void Function()? onTap;
  final void Function()? leftDrag;
  final void Function()? rightDrag;
  final void Function()? onLongPress;

  final int? flex;

  final Color? color;

  const BackdropContainer({
    super.key,
    this.child,
    this.selected = false,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.onTap,
    this.leftDrag,
    this.rightDrag,
    this.onLongPress,
    this.flex,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return flex == null
        ? widget(context)
        : Expanded(
            flex: flex!,
            child: widget(context),
          );
  }

  Widget widget(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    double initial = 0;
    double distance = 0;

    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      onHorizontalDragStart: (DragStartDetails details) {
        initial = details.globalPosition.dx;
      },
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        distance = details.globalPosition.dx - initial;
      },
      onHorizontalDragEnd: (DragEndDetails details) {
        final right = rightDrag ?? () {};
        final left = leftDrag ?? () {};

        if (distance > 0) {
          right();
        } else if (distance < 0) {
          left();
        }
      },
      child: Container(
        margin: margin ?? Std.padding.vertical5,
        padding: padding ?? Std.padding.zero,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? themeProvider.primary,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: themeProvider.choose(
                Std.color.secondaryDark,
                Std.color.tertiaryLight,
              ),
              blurRadius: 2,
              spreadRadius: 1,
              offset: const Offset(0, 2.5),
            )
          ],
        ),
        child: child,
      ),
    );
  }
}
