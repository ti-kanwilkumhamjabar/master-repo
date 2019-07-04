import 'package:flutter/material.dart';
import 'package:master_repo/screens/perpu/container_icon_perpu.dart';

class PerundangUndanganScreen extends StatelessWidget{
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
                  title: Text("Perundang-Undangan",
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
              ContainerIconPerpu(imageName: "PP_Peraturan"),
              ContainerIconPerpu(imageName: "PP_Rancangan"),
              ContainerIconPerpu(imageName: "PP_Harmonisasi"),
              ContainerIconPerpu(imageName: "PP_Putusan")
            ],
          ),
        ),
      ),
    );
  }
}