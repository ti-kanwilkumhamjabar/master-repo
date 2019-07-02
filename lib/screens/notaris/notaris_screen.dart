import 'package:flutter/material.dart';
import 'package:master_repo/screens/notaris/container_icon_notaris.dart';

class NotarisScreen extends StatelessWidget{
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
                  title: Text("NOTARIS",
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