import 'package:flutter/material.dart';
import 'package:master_repo/widget/container_icon.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("siEmil",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16.0,
                      )),
                  background: Image.asset('images/image1.jpeg',
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
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
      ),

    );
  }
}




