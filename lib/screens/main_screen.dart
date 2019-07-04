import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:master_repo/grid/horizontal_list.dart';
import 'package:master_repo/grid/grid_view.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() => new _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 150.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/image1.jpeg'),
          AssetImage('images/image2.jpeg'),
          AssetImage('images/image3.jpeg')
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1500),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
      ),
    );

    return Scaffold(
      body: ListView(
        children: <Widget>[
          image_carousel,
          Padding(padding: EdgeInsets.all(6.0),child: Text('Categories'),),
          HorizontalList(),
          Padding(padding: EdgeInsets.all(6.0),child: Text('ALL'),),
          Container(
            height: 320.0,
            child: BodyGrid(),
          )
        ],
      ),
    );
  }
}


