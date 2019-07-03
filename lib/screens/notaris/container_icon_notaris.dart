import 'package:flutter/material.dart';
import 'package:master_repo/data/data_notaris.dart';
import 'package:master_repo/screens/data_sample.dart';
import 'package:master_repo/screens/notaris/detail_notaris.dart';

class ContainerIconNotaris extends StatelessWidget{
  final String imageName;
  final Function onPressed;

  ContainerIconNotaris({
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
              return DetailNotaris(data : dataNotaris[0]);
            }
            else if(this.imageName == "n_syarat"){
              return DetailNotaris(data : dataNotaris[1]);
            }
            else if(this.imageName == "n_tusi"){
              return DetailNotaris(data : dataNotaris[2]);
            }
            else if(this.imageName == "c_aturan"){
              return DetailNotaris(data : dataNotaris[3]);
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
              color: Colors.teal
          ),
        ),
      ),
    );
  }
}