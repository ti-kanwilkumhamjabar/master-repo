import 'package:flutter/material.dart';
import 'package:master_repo/data/hak_paten_data.dart';
import 'package:master_repo/listvieweffect/ListViewEffect.dart';
import 'package:master_repo/timeline/timeline_model.dart';

class HomeListEffect extends StatefulWidget {
  _Home createState() => new _Home();
}

class _Home extends State<HomeListEffect> {


  static generateList(){
    List<String> newContent = new List<String>();

    for(var x = 0; x < pengajuanHakPaten.length; x++)
    {
      newContent.add(pengajuanHakPaten[x].konten);
    }

    return newContent;
  }

  List<String> _list = generateList();
  Duration _duration = Duration(milliseconds: 2000);

  Widget build(BuildContext context) {

    return new Scaffold(body: new Container(child:
    new Container(padding: EdgeInsets.all(10), height: MediaQuery.of(context).size.height, child:
    new ListViewEffect(duration: _duration, children: _list.map((s) => _buildWidgetExample(s)).toList())
    )
    ));
  }

  Widget _buildWidgetExample(String text){
    return new Container(
        decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(8.0)
        ),
        height: 200,
        width: double.infinity,
        //constraints: BoxConstraints.expand(),
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: new Center(
            child: new Text(
                text,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                )
            )
        )
    );
  }
}

/*
return new Container(
        decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(8.0)
        ),
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 8.0),
        child: new Center(
            child: new Text(
                text,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                )
            )
        )
    );
*/

/*
List<String> _list = ["Hey","that's", "the", "effect"].toList();
  Duration _duration = Duration(milliseconds: 300);

  Widget build(BuildContext context) {

    return new Scaffold(body: new Container(child:
    new Container(padding: EdgeInsets.all(10), height: MediaQuery.of(context).size.height, child:
    new ListViewEffect(duration: _duration, children: _list.map((s) => _buildWidgetExample(s)).toList())
    )
    ));
  }

  Widget _buildWidgetExample(String text){
    return new Container(
        decoration: BoxDecoration(color: Colors.deepPurpleAccent, borderRadius: BorderRadius.all(Radius.circular(20))), height: 100, width: double.infinity, margin: EdgeInsets.all(10),
        child: new Center(child: new Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)))
    );
  }
*/