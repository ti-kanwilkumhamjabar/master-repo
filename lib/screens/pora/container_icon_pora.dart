import 'package:flutter/material.dart';
import 'package:master_repo/data/data_pora.dart';
import 'package:master_repo/screens/pora/pelaporan_orang_asing.dart';

class ContainerIconPora extends StatelessWidget {

  final String imageName;
  final Function onPressed;

  ContainerIconPora({
    @required this.imageName, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){

            return PelaporanOrangAsing(data : dataPora[0]);

          }));
        },
        child : Container(
          padding: EdgeInsets.all(1.0),
          height: 75.0,
          margin: EdgeInsets.all(1.0),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('iconpop/$imageName.png'), fit: BoxFit.fitHeight),
              color: Colors.white
          ),
        ),
      ),
    );
  }
}