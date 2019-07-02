import 'package:flutter/material.dart';

class KlienBapasScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Klien Bapas"),
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