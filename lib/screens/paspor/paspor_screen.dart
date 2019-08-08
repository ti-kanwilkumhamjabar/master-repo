import 'package:flutter/material.dart';
import 'package:master_repo/screens/paspor/container_icon_paspor.dart';

class PasporScreen extends StatelessWidget{
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
                  background: Image.asset('images/passport.jpg',
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