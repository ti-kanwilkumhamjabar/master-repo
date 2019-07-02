import 'package:flutter/material.dart';

class NarapidanaScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Narapidana"),
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