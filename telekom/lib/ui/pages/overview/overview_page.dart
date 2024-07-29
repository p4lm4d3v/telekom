import 'package:flutter/material.dart';
import 'package:telekom/static/std.dart';
import 'package:telekom/ui/pages/overview/cable_groups_list.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Std.padding.all10,
        child: const CableGroupsList(),
      ),
    );
  }
}
