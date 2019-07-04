import 'package:flutter/material.dart';
import 'package:master_repo/screens/detail_screens.dart';

class BodyGrid extends StatefulWidget {
  @override
  _BodyGridState createState() => _BodyGridState();
}

class _BodyGridState extends State<BodyGrid> {

  var list_grid = [
    {
      "title":"yankum",
      "picture":"images/icon_new/1.png",
      "description":"Yankum"
    },
    {
      "title":"uud",
      "picture":"images/icon_new/2.png",
      "description":"uud"
    },
    {
      "title":"admin",
      "picture":"images/icon_new/3.png",
      "description":"admin"
    },
    {
      "title":"passport",
      "picture":"images/icon_new/4.png",
      "description":"passport"
    },
    /*{
      "title":"hukum",
      "picture":"images/icon_new/5.png",
      "description":"hukum"
    },
    {
      "title":"timbangan",
      "picture":"images/icon_new/6.png",
      "description":"timbangan"
    },
    {
      "title":"kitas",
      "picture":"images/icon_new/7.png",
      "description":"kitas"
    },
    {
      "title":"hello",
      "picture":"images/icon_new/8.png",
      "description":"hello"
    },*/
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: list_grid.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
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
            onTap: (){},
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(prod_title, style: TextStyle(fontWeight: FontWeight.bold),),
                    title: Text(description, style: TextStyle(color: Colors.blueGrey),),
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


