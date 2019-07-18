import 'package:flutter/material.dart';
import 'package:master_repo/data/data_hak_cipta.dart';
import 'package:master_repo/data/hak_cipta_data.dart';
import 'package:master_repo/screens/hak_cipta/detail_hak_cipta.dart';
import 'package:master_repo/screens/data_sample.dart';

class ContainerIconHakCipta extends StatelessWidget {
  final String imageName;
  final Function onPressed;

  HakCiptaData hakCiptaData = new HakCiptaData(definisiHakCipta, pengajuanHakCipta, aturanUndangUndangHakCipta);

  ContainerIconHakCipta({
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
              return DetailHakCipta(title: 'Definisi',konten : hakCiptaData);
            }
            else if(this.imageName == "c_prosedur"){
              return DetailHakCipta(title: 'Pengajuan',konten : hakCiptaData);
            }
            else if(this.imageName == "c_aturan"){
              return DetailHakCipta(title: 'Aturan',konten : hakCiptaData);
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