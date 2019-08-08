import 'package:flutter/material.dart';
import 'package:master_repo/screens/desain_industri/container_icon_desain_industri.dart';

class DesainIndustriScreen extends StatelessWidget{
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
                  background: Image.asset('images/desainindustri.jpeg',
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
              ContainerIconDesainIndustri(imageName: "c_definisi"),
              ContainerIconDesainIndustri(imageName: "c_prosedur"),
              ContainerIconDesainIndustri(imageName: "c_aturan"),
              ContainerIconDesainIndustri(imageName: "data_perbandingan")
            ],
          ),
        ),
      ),
    );
  }
}