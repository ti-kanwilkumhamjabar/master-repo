import 'package:flutter/material.dart';
import 'package:master_repo/data/merek_data.dart';
import 'package:master_repo/screens/data_sample.dart';
import 'package:master_repo/screens/merek/detail_merek.dart';

class ContainerIconMerek extends StatelessWidget {

  final String imageName;
  final Function onPressed;
  MerekData merekData = new MerekData(definisiMerek, pengajuanMerek, aturanUndangUndangMerek);

  ContainerIconMerek({
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
              return DetailMerek(title: 'Definisi',konten : merekData);
            }
            else if(this.imageName == "c_prosedur"){
              return DetailMerek(title: 'Pengajuan',konten : merekData);
            }
            else if(this.imageName == "c_aturan"){
              return DetailMerek(title: 'Aturan',konten : merekData);
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