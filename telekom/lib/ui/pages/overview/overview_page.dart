import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/provider/color_codes_provider.dart';
import 'package:telekom/provider/settings_provider.dart';
import 'package:telekom/provider/theme_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/pages/overview/color_code_details.dart';
import 'package:telekom/ui/pages/overview/color_codes_list.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsProvider = context.watch<SettingsProvider>();
    final themeProvider = context.watch<ThemeProvider>();
    final colorCodesProvider = context.watch<ColorCodesProvider>();

    final up = settingsProvider.colorCodeDetailsUp;
    final first = Expanded(child: up ? const ColorCodesList() : const ColorCodeDetails());
    final second = Expanded(child: up ? const ColorCodeDetails() : const ColorCodesList());

    return Scaffold(
      backgroundColor: themeProvider.primary,
      floatingActionButton: FloatingActionButton(
        onPressed: colorCodesProvider.get,
        backgroundColor: themeProvider.secondary,
        shape: const CircleBorder(),
        child: Icon(
          Std.icon.refresh,
          color: themeProvider.text,
        ),
      ),
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              first,
              Std.space.line(color: themeProvider.secondary, horizontal: 10, vertical: 5),
              second,
            ],
          ),
        ),
      ),
    );
  }
}
