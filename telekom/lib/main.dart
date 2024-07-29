import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:telekom/db_keys.dart';
import 'package:telekom/home_page.dart';

void main() async {
  // Initialize Hive
  await Hive.initFlutter();

  final box = await Hive.openBox(DBKeys.firstBox);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
