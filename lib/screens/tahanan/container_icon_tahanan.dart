import 'package:flutter/material.dart';
import 'package:master_repo/data/data_tahanan.dart';
import 'package:master_repo/screens/data_sample.dart';
import 'package:master_repo/screens/tahanan/detail_tahanan.dart';

class ContainerIconTahanan extends StatelessWidget{
  final String imageName;
  final Function onPressed;

  ContainerIconTahanan({
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
              return DetailTahanan(data : dataTahanan[0]);
            }
            else{
              return DataSample();
            }
            //return HakPatenScreen();
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