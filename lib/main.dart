import 'package:flutter/material.dart';
import 'package:master_repo/data/data_desain_industri.dart';
import 'package:master_repo/data/data_fidusia.dart';
import 'package:master_repo/data/data_hak_cipta.dart';
import 'package:master_repo/data/data_hak_paten.dart';
import 'package:master_repo/data/data_merek.dart';
import 'package:master_repo/data/data_visa.dart';
import 'package:master_repo/screens/desain_industri/detail_desain_industri.dart';
import 'package:master_repo/screens/fidusia/detail_fidusia.dart';
import 'package:master_repo/screens/hak_cipta/detail_hak_cipta.dart';
import 'package:master_repo/screens/hak_paten/detail_paten.dart';
import 'package:master_repo/screens/main_screen.dart';
import 'package:master_repo/screens/merek/detail_merek.dart';
import 'package:master_repo/screens/visa/detail_visa.dart';

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
  DataMerek data2 = dataMerek.firstWhere((it)=> it.title == title);
  DataHakCipta data3 = dataHakCipta.firstWhere((it)=> it.title == title);
  DataDesainIndustri data4 = dataDesainIndustri.firstWhere((it)=> it.title == title);
  DataFidusia data5 = dataFidusia.firstWhere((it)=> it.title == title);

  if(title.toString() == "DataHakPaten"){
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => DetailHakPaten(data),
    );
  }
  else{
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => DetailFidusia(data5),
    );
  }

}
