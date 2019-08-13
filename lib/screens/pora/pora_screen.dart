import 'package:flutter/material.dart';
import 'package:master_repo/screens/pora/container_icon_pora.dart';

class PoraScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.asset('images/pora.jpg',
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Container(
          color: Colors.white,
          margin: EdgeInsets.all(1.0),
          child: GridView.count(
            crossAxisCount: 1,
            children: <Widget>[
              ContainerIconPora(imageName: "PORA_Link")
            ],
          ),
        ),
      ),
    );
  }
}