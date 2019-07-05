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

  Future<bool> _onBackPressed() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Konfirmasi'),
        content: new Text('Apakah Anda Yakin Akan Keluar Aplikasi ?'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => Navigator.of(context).pop(false),
            child: roundedButton("Tidak", const Color(0xFF167F67),
                const Color(0xFFFFFFFF)),
          ),
          new GestureDetector(
            onTap: () => Navigator.of(context).pop(true),
            child: roundedButton(" Ya ", const Color(0xFF167F67),
                const Color(0xFFFFFFFF)),
          ),
        ],
      ),
    ) ??
        false;
  }

  Widget roundedButton(String buttonLabel, Color bgColor, Color textColor) {
    var loginBtn = new Container(
      padding: EdgeInsets.all(5.0),
      alignment: FractionalOffset.center,
      decoration: new BoxDecoration(
        color: bgColor,
        borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: const Color(0xFF696969),
            offset: Offset(1.0, 6.0),
            blurRadius: 0.001,
          ),
        ],
      ),
      child: Text(
        buttonLabel,
        style: new TextStyle(
            color: textColor, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    );
    return loginBtn;
  }

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 150.0,
      child: Carousel(
        boxFit: BoxFit.contain,
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

    return new WillPopScope(
      onWillPop: _onBackPressed,
      child: new Scaffold(
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
      )
    );


  }
}


