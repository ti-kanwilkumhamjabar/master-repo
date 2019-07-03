import 'package:flutter/material.dart';
import 'package:master_repo/data/data_barang_sitaan.dart';
import 'package:master_repo/screens/barang_sitaan/detail_barang_sitaan.dart';
import 'package:master_repo/screens/data_sample.dart';

class ContainerIconBarangSitaan extends StatelessWidget{
  final String imageName;
  final Function onPressed;

  ContainerIconBarangSitaan({
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
              return DetailBarangSitaan(data : dataBarangSitaan[0]);
            }
            else if(this.imageName == "c_aturan"){
              return DetailBarangSitaan(data : dataBarangSitaan[1]);
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