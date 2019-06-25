import 'package:flutter/material.dart';

class ContainerIcon extends StatelessWidget {

  final int imageIndex;
  final Function onPressed;

  ContainerIcon({
    @required this.imageIndex, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      height: 100.0,
      margin: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/$imageIndex.png'), fit: BoxFit.fitHeight),
        color: Colors.teal,
      ),
    );
  }
}