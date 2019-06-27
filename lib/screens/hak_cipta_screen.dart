import 'package:flutter/material.dart';
import 'package:master_repo/widget/container_icon.dart';

class HakCiptaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: const Text('Hak Cipta'),
        ),
        SliverList(delegate: SliverChildListDelegate(buildTextViews(50))),
      ],
    );
  }

  List buildTextViews(int count) {
    List<Widget> strings = List();
    for (int i = 0; i < count; i++) {
      strings.add(new Padding(
          padding: new EdgeInsets.all(16.0),
          child: new Text("Item number " + i.toString(),
              style: new TextStyle(fontSize: 20.0))));
    }
    return strings;
  }
}
