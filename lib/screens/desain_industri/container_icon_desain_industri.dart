import 'package:flutter/material.dart';
import 'package:master_repo/data/data_desain_industri.dart';
import 'package:master_repo/screens/desain_industri/detail_desain_industri.dart';
import 'package:master_repo/screens/ham_screen.dart';

class ContainerIconDesainIndustri extends StatelessWidget{
  final String imageName;
  final Function onPressed;

  ContainerIconDesainIndustri({
    @required this.imageName, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){

            if(this.imageName == "c_definisi"){
              return DetailDesainIndustri(data : dataDesainIndustri[0]);
            }
            else if(this.imageName == "c_prosedur"){
              return DetailDesainIndustri(data : dataDesainIndustri[1]);
            }
            else if(this.imageName == "c_aturan"){
              return DetailDesainIndustri(data : dataDesainIndustri[2]);
            }
            else{
              return HamScreen();
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
              color: Colors.teal
          ),
        ),
      ),
    );
  }
}