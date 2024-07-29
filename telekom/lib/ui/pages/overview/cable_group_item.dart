import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:telekom/static/std.dart';
import 'package:telekom/ui/pages/overview/cable-page/cable_page.dart';

class CableGroupItem extends StatelessWidget {
  final String title;

  const CableGroupItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(const CablePage()),
      child: Container(
        padding: Std.padding.all15,
        margin: Std.padding.symmetric(5, 10),
        decoration: BoxDecoration(
          color: Std.color.primary,
          boxShadow: [
            BoxShadow(
              color: Std.color.secondary,
              spreadRadius: 5.0,
              blurRadius: 2.0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Icon(
              Std.icon.rightArrow,
            )
          ],
        ),
      ),
    );
  }
}
