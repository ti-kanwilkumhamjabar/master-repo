import 'package:flutter/material.dart';
import 'package:master_repo/screens/fidusia/container_icon_fidusia.dart';

class FidusiaScreen extends StatelessWidget{
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
                  background: Image.asset('images/fidusia.jpeg',
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Container(
          color: Colors.white,
          margin: EdgeInsets.all(1.0),
          child: GridView.count(
            crossAxisCount: 4,
            children: <Widget>[
              ContainerIconFidusia(imageName: "c_definisi"),
              ContainerIconFidusia(imageName: "c_prosedur"),
              ContainerIconFidusia(imageName: "c_aturan"),
              ContainerIconFidusia(imageName: "f_search"),
              ContainerIconFidusia(imageName: "data_perbandingan")
            ],
          ),
        ),
      ),
    );
  }
}