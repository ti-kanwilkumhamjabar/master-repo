import 'package:flutter/material.dart';
import 'package:master_repo/screens/izin_tinggal/container_icon_izin_tinggal.dart';

class IzinTinggalScreen extends StatelessWidget{

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
                  title: Text("IZIN TINGGAL",
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
              ContainerIconIzinTinggal(imageName: "izin tinggal"),
              ContainerIconIzinTinggal(imageName: "c_prosedur"),
              ContainerIconIzinTinggal(imageName: "c_definisi"),
              ContainerIconIzinTinggal(imageName: "data_perbandingan"),
            ],
          ),
        ),
      ),
    );
  }
}