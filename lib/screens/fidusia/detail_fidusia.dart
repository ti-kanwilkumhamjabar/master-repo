import 'package:master_repo/data/data_fidusia.dart';
import 'package:flutter/material.dart';

class DetailFidusia extends StatelessWidget {
  final DataFidusia data;
  final Function onPressed;

  DetailFidusia({
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
                  title: Text("FIDUSIA",
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
                Text('${data.description}', textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.white, height: 1.5, fontSize: 14.0, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}