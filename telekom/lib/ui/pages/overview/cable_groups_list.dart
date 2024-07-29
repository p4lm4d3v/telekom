import 'package:flutter/material.dart';
import 'package:telekom/ui/pages/overview/cable_group_item.dart';

class CableGroupsList extends StatelessWidget {
  const CableGroupsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, idx) => CableGroupItem(
        title: "Group ${idx + 1}",
      ),
    );
  }
}
