import 'package:flutter/material.dart';
import 'package:master_repo/data/data_merek.dart';
import 'package:master_repo/screens/data_sample.dart';
import 'package:master_repo/screens/merek/detail_merek.dart';

class ContainerIconMerek extends StatelessWidget {

  final String imageName;
  final Function onPressed;

  ContainerIconMerek({
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
              return DetailMerek(data : dataMerek[0]);
            }
            else if(this.imageName == "c_prosedur"){
              return DetailMerek(data : dataMerek[1]);
            }
            else if(this.imageName == "c_aturan"){
              return DetailMerek(data : dataMerek[2]);
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