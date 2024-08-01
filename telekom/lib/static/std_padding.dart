import 'package:flutter/material.dart';

class StdPadding {
  EdgeInsets zero = const EdgeInsets.all(0);

  EdgeInsets all1 = const EdgeInsets.all(1);
  EdgeInsets all2 = const EdgeInsets.all(2);
  EdgeInsets all5 = const EdgeInsets.all(5.0);
  EdgeInsets all7 = const EdgeInsets.all(7.0);
  EdgeInsets all10 = const EdgeInsets.all(10.0);
  EdgeInsets all15 = const EdgeInsets.all(15.0);
  EdgeInsets all20 = const EdgeInsets.all(20.0);
  EdgeInsets all30 = const EdgeInsets.all(30.0);

  EdgeInsets horizontal1 = const EdgeInsets.symmetric(horizontal: 1);
  EdgeInsets horizontal2 = const EdgeInsets.symmetric(horizontal: 2);
  EdgeInsets horizontal5 = const EdgeInsets.symmetric(horizontal: 5.0);
  EdgeInsets horizontal7 = const EdgeInsets.symmetric(horizontal: 7.0);
  EdgeInsets horizontal10 = const EdgeInsets.symmetric(horizontal: 10.0);
  EdgeInsets horizontal15 = const EdgeInsets.symmetric(horizontal: 15.0);
  EdgeInsets horizontal20 = const EdgeInsets.symmetric(horizontal: 20.0);
  EdgeInsets horizontal30 = const EdgeInsets.symmetric(horizontal: 30.0);

  EdgeInsets vertical1 = const EdgeInsets.symmetric(vertical: 1);
  EdgeInsets vertical2 = const EdgeInsets.symmetric(vertical: 2);
  EdgeInsets vertical5 = const EdgeInsets.symmetric(vertical: 5.0);
  EdgeInsets vertical7 = const EdgeInsets.symmetric(vertical: 7.0);
  EdgeInsets vertical10 = const EdgeInsets.symmetric(vertical: 10.0);
  EdgeInsets vertical15 = const EdgeInsets.symmetric(vertical: 15.0);
  EdgeInsets vertical20 = const EdgeInsets.symmetric(vertical: 20.0);
  EdgeInsets vertical30 = const EdgeInsets.symmetric(vertical: 30.0);

  EdgeInsets symmetric(double h, double v) {
    return EdgeInsets.symmetric(horizontal: h, vertical: v);
  }
}
