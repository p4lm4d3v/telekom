import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:telekom/provider/navbar_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/navbar/navbar_items.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navbarProvider = context.watch<NavBarProvider>();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: Std.color.transparent,
        border: Border(
          top: BorderSide(
            color: Std.color.tertiary,
          ),
        ),
      ),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        haptic: false,
        gap: 8,
        activeColor: Std.color.highlight,
        duration: Std.duration.ms300,
        backgroundColor: Std.color.primary,
        tabBackgroundColor: Colors.transparent,
        padding: Std.padding.all10,
        tabMargin: Std.padding.all10,
        selectedIndex: navbarProvider.idx,
        onTabChange: (index) => navbarProvider.setIdx(index),
        tabs: List.generate(
          navBarItems.length,
          (index) => GButton(
            backgroundColor: Std.color.transparent,
            iconSize: Std.icon.size,
            textStyle: navBarItems[index].textStyle,
            iconColor: Std.color.inversePrimary,
            icon: navBarItems[index].icon,
          ),
        ),
      ),
    );
  }
}
