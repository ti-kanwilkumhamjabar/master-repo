import 'package:flutter/material.dart';
import 'package:master_repo/screens/notaris/container_icon_notaris.dart';

class NotarisScreen extends StatelessWidget{
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
                  background: Image.asset('images/kenotariatan.jpg',
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
              ContainerIconNotaris(imageName: "c_definisi"),
              ContainerIconNotaris(imageName: "n_syarat"),
              ContainerIconNotaris(imageName: "n_tusi"),
              ContainerIconNotaris(imageName: "c_aturan"),
              ContainerIconNotaris(imageName: "data_perbandingan")
            ],
          ),
        ),
      ),
    );
  }
}