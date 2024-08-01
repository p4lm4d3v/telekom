import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:telekom/logic/logic_provider.dart';
import 'package:telekom/provider/navbar_provider.dart';
import 'package:telekom/static/std.dart';
import 'package:telekom/ui/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Std.color.primary,
      statusBarColor: Std.color.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  // // Initialize Hive
  // await Hive.initFlutter();

  // final box = await Hive.openBox(DBKeys.firstBox);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavBarProvider()),
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
