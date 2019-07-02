import 'package:flutter/material.dart';
import 'package:master_repo/screens/desain_industri/container_icon_desain_industri.dart';

class DesainIndustriScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,

      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.teal,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("DESAIN INDUSTRI",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.asset('images/image2.jpeg',
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