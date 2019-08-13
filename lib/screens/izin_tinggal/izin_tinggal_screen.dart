import 'package:flutter/material.dart';
import 'package:master_repo/screens/izin_tinggal/container_icon_izin_tinggal.dart';

class IzinTinggalScreen extends StatelessWidget{

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
                  background: Image.asset('images/izintinggal.jpg',
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
              ContainerIconIzinTinggal(imageName: "Izin_Kunjungan"),
              ContainerIconIzinTinggal(imageName: "c_prosedur"),
              ContainerIconIzinTinggal(imageName: "Izin_Perkawinan"),
              ContainerIconIzinTinggal(imageName: "data_perbandingan"),
            ],
          ),
        ),
      ),
    );
  }
}