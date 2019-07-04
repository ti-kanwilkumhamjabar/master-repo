import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:master_repo/screens/hak_paten/container_icon_hak_paten.dart';

class HakPatenScreen extends StatelessWidget {
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
                  title: Text("HAK PATEN",
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
          color: Colors.white,
          margin: EdgeInsets.all(5.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              ContainerIconHakPaten(imageName: "c_definisi"),
              ContainerIconHakPaten(imageName: "c_prosedur"),
              ContainerIconHakPaten(imageName: "c_aturan"),
              ContainerIconHakPaten(imageName: "data_perbandingan")
            ],
          ),
        ),
      ),
    );
  }
}
