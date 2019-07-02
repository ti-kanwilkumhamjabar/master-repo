import 'package:flutter/material.dart';
import 'package:master_repo/screens/bantuan_hukum_screen.dart';
import 'package:master_repo/screens/barang_sitaan_screen.dart';
import 'package:master_repo/screens/desain_industri/desain_industri_screen.dart';
import 'package:master_repo/screens/fidusia/fidusia_screen.dart';
import 'package:master_repo/screens/hak_paten/hak_paten_screen.dart';
import 'package:master_repo/screens/hak_cipta/hak_cipta_screen.dart';
import 'package:master_repo/screens/ham_screen.dart';
import 'package:master_repo/screens/izin_tinggal_screen.dart';
import 'package:master_repo/screens/klien_bapas_screen.dart';
import 'package:master_repo/screens/login_screen.dart';
import 'package:master_repo/screens/merek/merek_screen.dart';
import 'package:master_repo/screens/narapidana_screen.dart';
import 'package:master_repo/screens/notaris/notaris_screen.dart';
import 'package:master_repo/screens/paspor/paspor_screen.dart';
import 'package:master_repo/screens/perundang_undangan_screen.dart';
import 'package:master_repo/screens/pora_screen.dart';
import 'package:master_repo/screens/tahanan_screen.dart';
import 'package:master_repo/screens/visa/visa_screen.dart';

class ContainerIcon extends StatelessWidget {

  final int imageIndex;
  final Function onPressed;

  ContainerIcon({
    @required this.imageIndex, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){

            if(this.imageIndex == 1){
              return HakPatenScreen();
            }
            else if(this.imageIndex == 2){
              return MerekScreen();
            }
            else if(this.imageIndex == 3){
              return HakCiptaScreen();
            }
            else if(this.imageIndex == 4){
              return PoraScreen();
            }
            else if(this.imageIndex == 5){
              return IzinTinggalScreen();
            }
            else if(this.imageIndex == 6){
              return VisaScreen();
            }
            else if(this.imageIndex == 7){
              return DesainIndustriScreen();
            }
            else if(this.imageIndex == 8){
              return NotarisScreen();
            }
            else if(this.imageIndex == 9){
              return FidusiaScreen();
            }
            else if(this.imageIndex == 10){
              return TahananScreen();
            }
            else if(this.imageIndex == 11){
              return NarapidanaScreen();
            }
            else if(this.imageIndex == 12){
              return BarangSitaanScreen();
            }
            else if(this.imageIndex == 13){
              return HamScreen();
            }
            else if(this.imageIndex == 14){
              return BantuanHukumScreen();
            }
            else if(this.imageIndex == 15){
              return PasporScreen();
            }
            else if(this.imageIndex == 16){
              return KlienBapasScreen();
            }
            else if(this.imageIndex == 17){
              return PerundangUndanganScreen();
            }
            else if(this.imageIndex == 18){
              return LoginScreen();
            }
            else{
              return HakCiptaScreen();
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
                image: AssetImage('images/$imageIndex.png'), fit: BoxFit.fitHeight),
            color: Colors.teal,
        ),
      ),
      ),
    );
  }
}