import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/provider/settings_provider.dart';
import 'package:telekom/provider/theme_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/custom/backdrop_container.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsProvider = context.watch<SettingsProvider>();
    final themeProvider = context.watch<ThemeProvider>();

    return Scaffold(
      backgroundColor: themeProvider.primary,
      body: SafeArea(
        child: Padding(
          padding: Std.padding.all10,
          child: const Column(
            children: [
              DetailsUpDownSetting(),
              DarkThemeSetting(),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsUpDownSetting extends StatelessWidget {
  const DetailsUpDownSetting({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsProvider = context.watch<SettingsProvider>();
    final themeProvider = context.watch<ThemeProvider>();

    return BackdropContainer(
      child: Padding(
        padding: Std.padding.h10v5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Detalji Gore/Dole",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: themeProvider.text,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Switch(
              value: settingsProvider.colorCodeDetailsUp,
              activeColor: themeProvider.highlight,
              inactiveThumbColor: Std.color.black,
              inactiveTrackColor: themeProvider.tertiary,
              onChanged: (value) {
                settingsProvider.setColorCodeDetailsUp(value);
              },
            )
          ],
        ),
      ),
    );
  }
}

class DarkThemeSetting extends StatelessWidget {
  const DarkThemeSetting({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return BackdropContainer(
      child: Padding(
        padding: Std.padding.h10v5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Tamna Tema",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: themeProvider.text,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Switch(
              value: themeProvider.dark,
              activeColor: themeProvider.highlight,
              inactiveThumbColor: Std.color.black,
              inactiveTrackColor: themeProvider.tertiary,
              onChanged: themeProvider.set,
            )
          ],
        ),
      ),
    );
  }
}
