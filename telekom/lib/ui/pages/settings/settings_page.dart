import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/provider/settings_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/custom/custom_container.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsProvider = context.watch<SettingsProvider>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Std.padding.all10,
          child: Column(
            children: [
              CustomContainer(
                child: Padding(
                  padding: Std.padding.symmetric(10, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Detalji Gore/Dole",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Switch(
                        value: settingsProvider.colorCodeDetailsUp,
                        activeColor: Std.color.highlight,
                        inactiveThumbColor: Std.color.black,
                        inactiveTrackColor: Std.color.tertiary,
                        onChanged: (value) {
                          settingsProvider.setColorCodeDetailsUp(value);
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
