import 'package:flutter/material.dart';
import 'package:master_repo/widget/container_icon.dart';

class HakCiptaScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HAK CIPTA SCREEN"),
      ),
      body: Container(
        color: Colors.teal,
        margin: EdgeInsets.all(5.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            ContainerIcon(imageIndex: 1),
            ContainerIcon(imageIndex: 2),
            ContainerIcon(imageIndex: 3),
            ContainerIcon(imageIndex: 4),
            ContainerIcon(imageIndex: 5),
            ContainerIcon(imageIndex: 6),
            ContainerIcon(imageIndex: 7),
            ContainerIcon(imageIndex: 8),
            ContainerIcon(imageIndex: 9),
            ContainerIcon(imageIndex: 10),
            ContainerIcon(imageIndex: 11),
            ContainerIcon(imageIndex: 12),
            ContainerIcon(imageIndex: 13),
            ContainerIcon(imageIndex: 14),
            ContainerIcon(imageIndex: 15),
            ContainerIcon(imageIndex: 16),
            ContainerIcon(imageIndex: 17),
            ContainerIcon(imageIndex: 18),
          ],
        ),
      ),
    );
  }
}
