import 'package:flutter/material.dart';
import 'package:master_repo/data/data_visa.dart';
import 'package:master_repo/screens/data_sample.dart';
import 'package:master_repo/screens/visa/detail_visa.dart';

class ContainerIconVisa extends StatelessWidget{
  final String imageName;
  final Function onPressed;

  ContainerIconVisa({
    @required this.imageName, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){

            if(this.imageName == "Visa_KDefinisi"){
              return DetailVisa(data : dataVisa[0]);
            }
            else if(this.imageName == "Visa_KProsedur"){
              return DetailVisa(data : dataVisa[1]);
            }
            else if(this.imageName == "Visa_TDefinisi"){
              return DetailVisa(data : dataVisa[2]);
            }
            else if(this.imageName == "Visa_TProsedur"){
              return DetailVisa(data : dataVisa[3]);
            }
            else{
              return DataSample();
            }
            //return HakPatenScreen();
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