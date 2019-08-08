import 'package:flutter/material.dart';
import 'package:master_repo/data/data_izin_tinggal.dart';
import 'package:master_repo/screens/data_sample.dart';
import 'package:master_repo/screens/izin_tinggal/detail_izin_tinggal.dart';


class ContainerIconIzinTinggal extends StatelessWidget {

  final String imageName;
  final Function onPressed;

  ContainerIconIzinTinggal({
    @required this.imageName, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){

            if(this.imageName == "Izin_Kunjungan"){
              return DetailIzinTinggal(data : dataIzinTinggal[0]);
            }
            else if(this.imageName == "c_prosedur"){
              return DetailIzinTinggal(data : dataIzinTinggal[1]);
            }
            else if(this.imageName == "Izin_Perkawinan"){
              return DetailIzinTinggal(data : dataIzinTinggal[2]);
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