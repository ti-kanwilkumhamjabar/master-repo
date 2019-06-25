import 'package:flutter/material.dart';
import 'package:master_repo/screens/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SiEmil',
      theme: ThemeData(
        backgroundColor: Colors.tealAccent,
      ),
      home: MainScreen(),
    );
  }
}
