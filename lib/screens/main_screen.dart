import 'package:flutter/material.dart';
import 'package:master_repo/widget/container_icon.dart';

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
    return new WillPopScope(
      onWillPop: _onBackPressed,
      child: new Scaffold(
        backgroundColor: Colors.teal,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.teal,
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("Sistem Elektronik Manajemen Informasi dan Layanan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                            fontWeight: FontWeight.w600
                        )),
                    background: Image.asset('images/image2.jpeg',
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: Container(
            color: Colors.teal,
            margin: EdgeInsets.all(5.0),
            child: GridView.count(
              crossAxisCount: 3,
              children: <Widget>[
                ContainerIcon(imageIndex: 1),
                ContainerIcon(imageIndex: 2),
                ContainerIcon(imageIndex: 3),
                ContainerIcon(imageIndex: 4),
                ContainerIcon(imageIndex: 5),
                ContainerIcon(imageIndex: 6),
                ContainerIcon(imageIndex: 7),
                ContainerIcon(imageIndex: 8),
                ContainerIcon(imageIndex: 9),
                ContainerIcon(imageIndex: 10),
                ContainerIcon(imageIndex: 11),
                ContainerIcon(imageIndex: 12),
                ContainerIcon(imageIndex: 13),
                ContainerIcon(imageIndex: 14),
                ContainerIcon(imageIndex: 15),
                ContainerIcon(imageIndex: 16),
                ContainerIcon(imageIndex: 17),
                ContainerIcon(imageIndex: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




