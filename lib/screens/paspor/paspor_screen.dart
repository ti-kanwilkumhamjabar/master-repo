import 'package:flutter/material.dart';
import 'package:master_repo/screens/paspor/container_icon_paspor.dart';

class PasporScreen extends StatelessWidget{
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
                  title: Text("PASPOR",
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
              ContainerIconPaspor(imageName: "c_definisi"),
              ContainerIconPaspor(imageName: "c_prosedur"),
              ContainerIconPaspor(imageName: "c_aturan"),
              ContainerIconPaspor(imageName: "d_apengajuan"),
              ContainerIconPaspor(imageName: "data_perbandingan"),
            ],
          ),
        ),
      ),
    );
  }
}