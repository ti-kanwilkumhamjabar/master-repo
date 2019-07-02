import 'package:flutter/material.dart';
import 'package:master_repo/screens/hak_cipta/container_icon_hak_cipta.dart';

class BantuanHukumScreen extends StatelessWidget{
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
                  title: Text("BANTUAN HUKUM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.asset('images/image1.jpeg',
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
              ContainerIconHakCipta(imageName: "c_definisi"),
              ContainerIconHakCipta(imageName: "c_prosedur"),
              ContainerIconHakCipta(imageName: "c_aturan"),
              ContainerIconHakCipta(imageName: "data_jabar")
            ],
          ),
        ),
      ),
    );
  }
}