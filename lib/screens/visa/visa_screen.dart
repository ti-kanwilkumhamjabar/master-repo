import 'package:flutter/material.dart';
import 'package:master_repo/screens/visa/container_icon_visa.dart';

class VisaScreen extends StatelessWidget{
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
                  title: Text("VISA",
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
              ContainerIconVisa(imageName: "c_definisi"),
              ContainerIconVisa(imageName: "c_prosedur"),
              ContainerIconVisa(imageName: "c_aturan"),
              ContainerIconVisa(imageName: "data_perbandingan"),

            ],
          ),
        ),
      ),
    );
  }
}