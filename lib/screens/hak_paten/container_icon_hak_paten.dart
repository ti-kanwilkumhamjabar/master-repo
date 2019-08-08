import 'package:flutter/material.dart';
import 'package:master_repo/data/hak_paten_data.dart';
import 'package:master_repo/screens/hak_paten/detail_hak_paten.dart';
import 'package:master_repo/screens/data_sample.dart';

class ContainerIconHakPaten extends StatelessWidget {

  final String imageName;
  final Function onPressed;
  HakPatenData hakPatenData = new HakPatenData(definisiHakPaten,pengajuanHakPaten,aturanUndangUndangHakPaten);

  ContainerIconHakPaten({
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
              return DetailPaten(title: 'Definisi',konten : hakPatenData);
            }
            else if(this.imageName == "c_prosedur"){
              return DetailPaten(title: 'Pengajuan',konten : hakPatenData);
            }
            else if(this.imageName == "c_aturan"){
              return DetailPaten(title: 'Aturan',konten : hakPatenData);
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