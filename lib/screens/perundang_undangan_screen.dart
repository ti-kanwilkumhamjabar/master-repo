import 'package:flutter/material.dart';

class PerundangUndanganScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perundang - undangan"),
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