import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/provider/settings_provider.dart';
import 'package:telekom/static/std/std.dart';
import 'package:telekom/ui/pages/overview/color_code_details.dart';
import 'package:telekom/ui/pages/overview/color_codes_list.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsProvider = context.watch<SettingsProvider>();

    final first = settingsProvider.colorCodeDetailsUp ? const Expanded(child: ColorCodeDetails()) : const Expanded(child: ColorCodesList());
    final second = settingsProvider.colorCodeDetailsUp ? const Expanded(child: ColorCodesList()) : const Expanded(child: ColorCodeDetails());

    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              first,
              Std.space.line(color: Std.color.tertiary, horizontal: 10, vertical: 5),
              second,
            ],
          ),
        ),
      ),
    );
  }
}
