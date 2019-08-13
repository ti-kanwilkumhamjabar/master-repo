import 'package:flutter/material.dart';
import 'package:master_repo/screens/merek/container_icon_merek.dart';


class MerekScreen extends StatelessWidget {
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
                  background: Image.asset('images/hakmerek.jpg',
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
              ContainerIconMerek(imageName: "c_definisi"),
              ContainerIconMerek(imageName: "c_prosedur"),
              ContainerIconMerek(imageName: "c_aturan"),
              ContainerIconMerek(imageName: "data_perbandingan")
            ],
          ),
        ),
      ),
    );
  }
}


