import 'package:flutter/material.dart';
import 'package:master_repo/screens/barang_sitaan/container_icon_barang_sitaan.dart';

class BarangSitaanScreen extends StatelessWidget {
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
                  background: Image.asset('images/barangsitaan.jpeg',
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: Container(
          color: Colors.white,
          margin: EdgeInsets.all(1.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              ContainerIconBarangSitaan(imageName: "c_definisi"),
              ContainerIconBarangSitaan(imageName: "c_aturan")
            ],
          ),
        ),
      ),
    );
  }
}