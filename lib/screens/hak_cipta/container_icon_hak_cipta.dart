import 'package:flutter/material.dart';
import 'package:master_repo/data/data_hak_cipta.dart';
import 'package:master_repo/screens/hak_cipta/detail_hak_cipta.dart';
import 'package:master_repo/screens/ham_screen.dart';

class ContainerIconHakCipta extends StatelessWidget {

    final String imageName;
  final Function onPressed;

  ContainerIconHakCipta({
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
              return DetailHakCipta(data : dataHakCipta[0]);
            }
            else if(this.imageName == "c_prosedur"){
              return DetailHakCipta(data : dataHakCipta[1]);
            }
            else if(this.imageName == "c_aturan"){
              return DetailHakCipta(data : dataHakCipta[2]);
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