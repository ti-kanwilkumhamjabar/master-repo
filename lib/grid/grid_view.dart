import 'package:flutter/material.dart';
import 'package:master_repo/firebase/listview_note.dart';
import 'package:master_repo/form/sample/sample_form_screen.dart';
import 'package:master_repo/listvieweffect/HomeListEffect.dart';
import 'package:master_repo/screens/bantuan_hukum/bantuan_hukum_screen.dart';
import 'package:master_repo/screens/barang_sitaan/barang_sitaan_screen.dart';
import 'package:master_repo/screens/desain_industri/desain_industri_screen.dart';
import 'package:master_repo/screens/fidusia/fidusia_screen.dart';
import 'package:master_repo/screens/hak_cipta/hak_cipta_screen.dart';
import 'package:master_repo/screens/hak_paten/hak_paten_definisi_form.dart';
import 'package:master_repo/screens/hak_paten/hak_paten_screen.dart';
import 'package:master_repo/screens/ham/ham_screen.dart';
import 'package:master_repo/screens/izin_tinggal/izin_tinggal_screen.dart';
import 'package:master_repo/screens/klien_bapas/klien_bapas_screen.dart';
import 'package:master_repo/screens/merek/merek_screen.dart';
import 'package:master_repo/screens/narapidana/narapidana_screen.dart';
import 'package:master_repo/screens/notaris/notaris_screen.dart';
import 'package:master_repo/screens/paspor/paspor_screen.dart';
import 'package:master_repo/screens/perpu/perundang_undangan_screen.dart';
import 'package:master_repo/screens/pora/pora_screen.dart';
import 'package:master_repo/screens/tahanan/tahanan_screen.dart';
import 'package:master_repo/screens/visa/visa_screen.dart';
import 'package:master_repo/timeline/sample_timeline/main_timeline.dart';

class BodyGrid extends StatefulWidget {
  @override
  _BodyGridState createState() => _BodyGridState();
}

class _BodyGridState extends State<BodyGrid> {

  var list_grid = [
    {
      "title":"Hak Paten",
      "picture":"images/icon_new/18.png",
      "description":""
    },
    {
      "title":"Merek",
      "picture":"images/icon_new/17.png",
      "description":""
    },
    {
      "title":"Hak Cipta",
      "picture":"images/icon_new/16.png",
      "description":""
    },
    {
      "title":"Desain Industri",
      "picture":"images/icon_new/15.png",
      "description":""
    },
    {
      "title":"Visa",
      "picture":"images/icon_new/14.png",
      "description":""
    },
    {
      "title":"Izin Tinggal",
      "picture":"images/icon_new/13.png",
      "description":""
    },
    {
      "title":"Paspor",
      "picture":"images/icon_new/4.png",
      "description":""
    },
    {
      "title":"Barang Sitaan",
      "picture":"images/icon_new/1.png",
      "description":""
    },
    {
      "title":"Perundang - Undangan",
      "picture":"images/icon_new/2.png",
      "description":""
    },
    {
      "title":"Bantuan Hukum",
      "picture":"images/icon_new/5.png",
      "description":""
    },
    {
      "title":"HAM",
      "picture":"images/icon_new/6.png",
      "description":""
    },
    {
      "title":"Pelaporan Orang Asing",
      "picture":"images/icon_new/7.png",
      "description":""
    },
    {
      "title":"Klien Bapas",
      "picture":"images/icon_new/8.png",
      "description":""
    },
    {
      "title":"Tahanan",
      "picture":"images/icon_new/9.png",
      "description":""
    },
    {
      "title":"Narapidana",
      "picture":"images/icon_new/10.png",
      "description":""
    },
    {
      "title":"Notaris",
      "picture":"images/icon_new/11.png",
      "description":""
    },
    {
      "title":"Fidusia",
      "picture":"images/icon_new/12.png",
      "description":""
    },
    {
      "title":"Login",
      "picture":"images/icon_new/3.png",
      "description":""
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: list_grid.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: SingleGrid(
              prod_title: list_grid[index]['title'],
              prod_pict: list_grid[index]['picture'],
              description: list_grid[index]['description'],
            ),
          );
        }
        );
  }
}

class SingleGrid extends StatelessWidget {
  final prod_title;
  final prod_pict;
  final description;


  SingleGrid({this.prod_title, this.prod_pict, this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_title,
        child: Material(
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_){
                if (prod_title == "Hak Paten"){
                  return HakPatenScreen();
                }
                else if (prod_title == "Merek"){
                  return MerekScreen();
                }
                else if (prod_title == "Hak Cipta"){
                  return HakCiptaScreen();
                }
                else if (prod_title == "Desain Industri"){
                  return DesainIndustriScreen();
                }
                else if (prod_title == "Visa"){
                  return VisaScreen();
                }
                else if (prod_title == "Bantuan Hukum"){
                  return BantuanHukumScreen();
                }
                else if (prod_title == "Barang Sitaan"){
                  return BarangSitaanScreen();
                }
                else if (prod_title == "Fidusia"){
                  return FidusiaScreen();
                }
                else if (prod_title == "HAM"){
                  return HamScreen();
                }
                else if (prod_title == "Izin Tinggal"){
                  return IzinTinggalScreen();
                }
                else if (prod_title == "Klien Bapas"){
                  return KlienBapasScreen();
                }
                else if (prod_title == "Narapidana"){
                  return NarapidanaScreen();
                }
                else if (prod_title == "Notaris"){
                  return NotarisScreen();
                }
                else if (prod_title == "Paspor"){
                  return PasporScreen();
                }
                else if (prod_title == "Perundang - Undangan"){
                  return PerundangUndanganScreen();
                }
                else if (prod_title == "Pelaporan Orang Asing"){
                  return PoraScreen();
                }
                else if (prod_title == "Tahanan"){
                  return TahananScreen();
                }
                else{
                  return HomeListEffect();
                }
              }));
            },
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: Text(
                      prod_title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10.0
                      ),
                      textAlign: TextAlign.center,
//                    leading: Text(prod_title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8.0),textAlign: TextAlign.center,),
//                    title: Text(description, style: TextStyle(fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
                  ),
                ),
                child: Image.asset(
                    prod_pict,
                  fit: BoxFit.cover,
                )
            ),
          ),
        ),
      ),
    );
  }
}


