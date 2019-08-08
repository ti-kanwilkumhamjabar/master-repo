import 'package:flutter/material.dart';
import 'package:master_repo/data/data_ham.dart';
import 'package:master_repo/screens/ham/detail_ham.dart';

class ContainerIconHam extends StatelessWidget{
  final String imageName;
  final Function onPressed;

  ContainerIconHam({
    @required this.imageName, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){

            if(this.imageName == "HAM_Produk"){
              return DetailHam(data : dataHam[0]);
            }
            else{
              return DetailHam(data : dataHam[1]);
            }
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