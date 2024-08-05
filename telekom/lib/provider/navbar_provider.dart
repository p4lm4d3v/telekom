import 'package:flutter/material.dart';

import 'package:telekom/ui/pages/overview/overview_page.dart';
import 'package:telekom/ui/pages/position/position_page.dart';
import 'package:telekom/ui/pages/settings/settings_page.dart';

class NavBarProvider extends ChangeNotifier {
  int idx = 1;

  void setIdx(int index) {
    idx = index;
    notifyListeners();
  }

  Widget getPage() {
    final pages = {
      0: const OverviewPage(),
      1: const PositionPage(),
      2: const SettingsPage(),
    };
    return pages[idx] ?? const Placeholder();
  }
}
