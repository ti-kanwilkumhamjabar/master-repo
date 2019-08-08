import 'package:flutter/material.dart';
import 'package:master_repo/data/desain_industri_data.dart';
import 'package:master_repo/screens/desain_industri/detail_desain_industri.dart';
import 'package:master_repo/screens/data_sample.dart';

class ContainerIconDesainIndustri extends StatelessWidget{
  final String imageName;
  final Function onPressed;
  DesainIndustriData desainIndustriData = new DesainIndustriData(definisiDesainIndustri, pengajuanDesainIndustri, aturanUndangUndangDesainIndustri);

  ContainerIconDesainIndustri({
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
              return DetailDesainIndustri(title: 'Definisi',konten : desainIndustriData);
            }
            else if(this.imageName == "c_prosedur"){
              return DetailDesainIndustri(title: 'Pengajuan',konten : desainIndustriData);
            }
            else if(this.imageName == "c_aturan"){
              return DetailDesainIndustri(title: 'Aturan',konten : desainIndustriData);
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