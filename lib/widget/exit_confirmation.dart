import 'package:flutter/material.dart';

class ExitConfirmation extends StatefulWidget {
  ExitConfirmation({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ExitConfirmationState createState() => _ExitConfirmationState();
}

class _ExitConfirmationState extends State<ExitConfirmation> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: _onBackPressed);
}

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