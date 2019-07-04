import 'package:flutter/material.dart';
import 'package:master_repo/screens/detail_screens.dart';

class BodyGrid extends StatefulWidget {
  @override
  _BodyGridState createState() => _BodyGridState();
}

class _BodyGridState extends State<BodyGrid> {

  var list_grid = [
    {
      "title":"admin",
      "picture":"icon_pop/c_definisi.png",
      "description":"admin"
    },
{
"title":"anggaran",
"picture":"icon_pop/c_terkait.png",
"description":"anggaran"
},
    /*{
      "title":"admin",
      "picture":"images/icon_new/12.png",
      "description":"admin"
    },*/
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: list_grid.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return SingleGrid(
            prod_title: list_grid[index]['title'],
            prod_pict: list_grid[index]['picture'],
            description: list_grid[index]['description'],
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
            onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailScreens())),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(prod_title, style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text(description, style: TextStyle(color: Colors.blueGrey),),
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


