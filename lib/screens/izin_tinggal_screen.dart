import 'package:flutter/material.dart';
import 'package:master_repo/charts/pie_chart.dart';

class IzinTinggalScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool toggle = false;
  Map<String, double> dataMap = new Map();
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  @override
  void initState() {
    super.initState();
    dataMap.putIfAbsent("JABAR", () => 30);
    dataMap.putIfAbsent("NASIONAL", () => 70);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pie Chart"),
      ),
      body: Container(
        child: Center(
          child:
          PieChart(
              dataMap: dataMap,
              legendFontColor: Colors.blueGrey[900],
              legendFontSize: 14.0,
              legendFontWeight: FontWeight.w500,
              animationDuration: Duration(milliseconds: 1000),
              chartLegendSpacing: 20.0,
              chartRadius: MediaQuery.of(context).size.width / 2.0,
              showChartValuesInPercentage: true,
              showChartValues: true,
              showChartValuesOutside: true,
              chartValuesColor: Colors.blueGrey[900].withOpacity(0.9),
              colorList: colorList,
              showLegends: true
          ),
        ),
      ),
    );
  }
}