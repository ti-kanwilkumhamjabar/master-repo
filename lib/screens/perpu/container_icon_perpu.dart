import 'package:flutter/material.dart';
import 'package:master_repo/data/data_perpu.dart';
import 'package:master_repo/screens/perpu/detail_perpu.dart';

class ContainerIconPerpu extends StatelessWidget{
  final String imageName;
  final Function onPressed;

  ContainerIconPerpu({
    @required this.imageName, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){

            if(this.imageName == "PP_Peraturan"){
              return DetailPerpu(data : dataPerpu[0]);
            }
            else if(this.imageName == "PP_Rancangan"){
              return DetailPerpu(data : dataPerpu[1]);
            }
            else if(this.imageName == "PP_Harmonisasi"){
              return DetailPerpu(data : dataPerpu[2]);
            }
            else{
              return DetailPerpu(data : dataPerpu[3]);
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