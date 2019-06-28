import 'package:flutter/material.dart';
import 'package:master_repo/data/data_hak_paten.dart';
import 'package:master_repo/screens/hak_paten/detail_paten.dart';
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
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }
}

generateRoute(RouteSettings settings) {
  final path = settings.name.split('/');
  final title = path[1];

  DataHakPaten data = dataHakPaten.firstWhere((it) => it.title == title);
  return MaterialPageRoute(
    settings: settings,
    builder: (context) => DetailHakPaten(data),
  );
}
