import 'package:flutter/material.dart';
import 'package:master_repo/data/data_klien_bapas.dart';
import 'package:master_repo/screens/data_sample.dart';
import 'package:master_repo/screens/klien_bapas/detail_klien_bapas.dart';

class ContainerIconKlienBapas extends StatelessWidget{
  final String imageName;
  final Function onPressed;

  ContainerIconKlienBapas({
    @required this.imageName, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){

            if(this.imageName == "c_definisi"){
              return DetailKlienBapas(data : dataKlienBapas[0]);
            }
            else if(this.imageName == "c_aturan"){
              return DetailKlienBapas(data : dataKlienBapas[1]);
            }
            else{
              return DataSample();
            }
          }));
        },
        child : Container(
          padding: EdgeInsets.all(3.0),
          height: 100.0,
          margin: EdgeInsets.all(2.0),
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