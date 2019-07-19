import 'package:flutter/material.dart';

class FirebaseMain extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Sample Frebase",
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
      home: SampleFirebase(),
    );
  }
}

class SampleFirebase extends StatefulWidget {
  @override
  _SampleFirebaseState createState() => _SampleFirebaseState();
}

class _SampleFirebaseState extends State<SampleFirebase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white70
        ),
      ),
    );
  }
}
