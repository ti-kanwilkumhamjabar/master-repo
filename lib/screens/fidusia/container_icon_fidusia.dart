import 'package:flutter/material.dart';
import 'package:master_repo/data/data_fidusia.dart';
import 'package:master_repo/screens/fidusia/detail_fidusia.dart';
import 'package:master_repo/screens/fidusia/pencarian_fidusia.dart';
import 'package:master_repo/screens/data_sample.dart';

class ContainerIconFidusia extends StatelessWidget{
  final String imageName;
  final Function onPressed;

  ContainerIconFidusia({
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
              return DetailFidusia(data : dataFidusia[0]);
            }
            else if(this.imageName == "c_prosedur"){
              return DetailFidusia(data : dataFidusia[1]);
            }
            else if(this.imageName == "c_aturan"){
              return DetailFidusia(data : dataFidusia[2]);
            }
            else if(this.imageName == "f_search"){
              return PencarianFidusia(data : dataFidusia[3]);
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