import 'package:flutter/material.dart';
import 'package:master_repo/data/data_bantuan_hukum.dart';
import 'package:master_repo/screens/bantuan_hukum/detail_bantuan_hukum.dart';

class ContainerIconBantuanHukum extends StatelessWidget{
  final String imageName;
  final Function onPressed;

  ContainerIconBantuanHukum({
    @required this.imageName, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){

            if(this.imageName == "BHukum_Layanan"){
              return DetailBantuanHukum(data : dataBantuanHukum[0]);
            }
            else{
              return DetailBantuanHukum(data : dataBantuanHukum[1]);
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
              color: Colors.teal
          ),
        ),
      ),
    );
  }
}