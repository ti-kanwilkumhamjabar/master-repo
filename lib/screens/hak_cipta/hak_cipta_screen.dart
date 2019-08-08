import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:master_repo/screens/hak_cipta/container_icon_hak_cipta.dart';

class HakCiptaScreen extends StatelessWidget {
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
                  background: Image.asset('images/hakcipta.jpeg',
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
              ContainerIconHakCipta(imageName: "c_definisi"),
              ContainerIconHakCipta(imageName: "c_prosedur"),
              ContainerIconHakCipta(imageName: "c_aturan"),
              ContainerIconHakCipta(imageName: "data_perbandingan")
            ],
          ),
        ),
      ),
    );
  }
}
