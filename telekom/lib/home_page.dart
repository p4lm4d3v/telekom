import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:telekom/db_keys.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Reference The Box
    final myBox = Hive.box(DBKeys.firstBox);

    // Write Data
    void writeData() {
      myBox.put(1, [1, 5.0, 'Milos']);
    }

    // Read Data
    void readData() {
      print(myBox.get(1).toString());
    }

    // Delete Data
    void deleteData() {
      myBox.delete(1);
    }

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
    );
  }
}
