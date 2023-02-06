import 'package:flutter/material.dart';

import 'screens/myhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFFD39E24),
        appBarTheme: AppBarTheme(color: Color(0xFF654321)),
        textTheme: TextTheme(
          bodyText2: TextStyle(fontStyle: FontStyle.italic),
          button: TextStyle(fontSize: 30),
        ),
      ),
      /*theme:
      ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(color: Colors.yellowAccent),
        scaffoldBackgroundColor: Colors.purple.shade900,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.grey.shade50, fontSize: 20),
        ),
      ),*/
      home: MyHomePage(),
    );
  }
}
