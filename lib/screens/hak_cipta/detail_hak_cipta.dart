import 'package:flutter/material.dart';
import 'package:master_repo/data/data_hak_cipta.dart';

class DetailHakCipta extends StatelessWidget{
  final DataHakCipta data;
  final Function onPressed;

  DetailHakCipta({
    @required this.data, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("HAK CIPTA",
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
                  style: TextStyle(color: Colors.black, fontSize: 25.0, decorationThickness: 5)
                ),
                Image.asset("images/hak_cipta_pengajuan.png")
              ],
            ),
          ),
        ),
      ),
    );
  }
}