import 'package:flutter/material.dart';
import 'package:master_repo/data/data_paspor.dart';

class DetailPaspor extends StatelessWidget{
  final DataPaspor data;
  final Function onPressed;

  DetailPaspor({
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
                    style: TextStyle(color: Colors.black, fontSize: 25.0, decorationThickness: 5)
                ),
                Text('${data.description}', textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black, height: 1.5, fontSize: 14.0, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}