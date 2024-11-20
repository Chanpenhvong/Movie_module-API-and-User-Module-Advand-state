import 'package:flutter/material.dart';
import 'package:moviedb_api/nuflutter2024_module/screens/item_home_screen.dart';

class ItemApp extends StatelessWidget {
  // const ItemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ItemHomeScreen(),
      theme: ThemeData(
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 1,
          shadowColor: Colors.deepPurple.withOpacity(.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
