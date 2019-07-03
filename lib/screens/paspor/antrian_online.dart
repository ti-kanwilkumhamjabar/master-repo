import 'package:flutter/material.dart';
import 'package:master_repo/data/data_paspor.dart';
import 'package:url_launcher/url_launcher.dart';

class AntrianOnline extends StatelessWidget{
  final DataPaspor data;
  final Function onPressed;

  AntrianOnline({
    @required this.data, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
                  title: Text("PASPOR",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.asset('images/image2.jpeg',
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Column(
              children: <Widget>[
                Text(
                    '\n${data.title}\n',
                    style: TextStyle(color: Colors.white, fontSize: 25.0, decorationThickness: 5)
                ),
                Text('Klik tautan di bawah untuk mengunjungi situs antrian online.\n', textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.white, height: 1.5, fontSize: 14.0, fontWeight: FontWeight.w600)),
                RaisedButton(
                  onPressed:  _launchURL,
                  child: Text('Antrian Online')
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  _launchURL() async {
    String url = data.description;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}