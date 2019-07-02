import 'dart:async';
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
      home:  new SplashScreen(),
      routes: <String, WidgetBuilder>{ '/MainScreen': (BuildContext context) => new MainScreen()},
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/MainScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal,
      body: new Center(
        child: new Image.asset('iconpop/pegawai1.png'),
      ),
    );
  }
}