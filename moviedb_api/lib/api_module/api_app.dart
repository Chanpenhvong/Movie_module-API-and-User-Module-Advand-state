import 'package:flutter/material.dart';
import 'package:moviedb_api/api_module/Screens/api_screen.dart';

class ApiApp extends StatelessWidget {
  const ApiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApiScreen(),
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 20),
        ),
        listTileTheme: ListTileThemeData(
          
        )
      ),
    );
  }
}
