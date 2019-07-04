import 'package:flutter/material.dart';
import 'package:master_repo/data/data_paspor.dart';
import 'package:master_repo/screens/data_sample.dart';
import 'package:master_repo/screens/paspor/antrian_online.dart';
import 'package:master_repo/screens/paspor/detail_paspor.dart';

class ContainerIconPaspor extends StatelessWidget {

  final String imageName;
  final Function onPressed;

  ContainerIconPaspor({
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
              return DetailPaspor(data : dataPaspor[0]);
            }
            else if(this.imageName == "c_prosedur"){
              return DetailPaspor(data : dataPaspor[1]);
            }
            else if(this.imageName == "c_aturan"){
              return DetailPaspor(data : dataPaspor[2]);
            }
            else if(this.imageName == "d_apengajuan"){
              return AntrianOnline(data : dataPaspor[3]);
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