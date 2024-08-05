import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:telekom/provider/color_codes_provider.dart';
import 'package:telekom/provider/settings_provider.dart';
import 'package:telekom/provider/navbar_provider.dart';
import 'package:telekom/provider/logic_provider.dart';
import 'package:telekom/provider/theme_provider.dart';
import 'package:telekom/ui/pages/home_page.dart';
import 'package:telekom/static/std/std.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  final prefs = await SharedPreferences.getInstance();
  bool dark = prefs.getBool("dark") ?? true;

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: dark ? const Color(0xff1f2223) : const Color(0xffffffff),
      statusBarColor: Std.color.transparent,
      statusBarIconBrightness: dark ? Brightness.light : Brightness.dark,
    ),
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ColorCodesProvider()),
        ChangeNotifierProvider(create: (_) => SettingsProvider()),
        ChangeNotifierProvider(create: (_) => NavBarProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider(dark)),
        ChangeNotifierProvider(create: (_) => LogicProvider()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
