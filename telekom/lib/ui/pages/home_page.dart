import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telekom/provider/navbar_provider.dart';
import 'package:telekom/provider/theme_provider.dart';
import 'package:telekom/ui/navbar/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // // Reference The Box
    // final myBox = Hive.box(DBKeys.firstBox);

    // // Write Data
    // void writeData() {
    //   myBox.put(1, [1, 5.0, 'Milos']);
    // }

    // // Read Data
    // void readData() {
    //   print(myBox.get(1).toString());
    // }

    // // Delete Data
    // void deleteData() {
    //   myBox.delete(1);
    // }

    final navbarProvider = context.watch<NavBarProvider>();
    final themeProvider = context.watch<ThemeProvider>();

    return Scaffold(
      backgroundColor: themeProvider.secondary,
      bottomNavigationBar: const NavBar(),
      body: navbarProvider.getPage(),
    );
  }
}
