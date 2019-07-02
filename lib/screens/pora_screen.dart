import 'package:flutter/material.dart';

class PoraScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengawasan Orang Asing"),
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