import 'package:flutter/material.dart';
import 'package:master_repo/data/data_hak_paten.dart';
import 'package:master_repo/screens/hak_paten/detail_paten.dart';
import 'package:master_repo/screens/ham_screen.dart';

class ContainerIconHakPaten extends StatelessWidget {

  final String imageName;
  final Function onPressed;

  ContainerIconHakPaten({
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
              return DetailHakPaten(data : dataHakPaten[0]);
            }
            else if(this.imageName == "c_prosedur"){
              return DetailHakPaten(data : dataHakPaten[1]);
            }
            else if(this.imageName == "c_aturan"){
              return DetailHakPaten(data : dataHakPaten[2]);
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