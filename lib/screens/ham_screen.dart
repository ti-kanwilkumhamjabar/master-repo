import 'package:flutter/material.dart';
import 'package:master_repo/charts/pie_chart.dart';

class HamScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HAM"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Masih dalam tahap Pengembangan :)'),
        ),
      ),
    );
  }
}