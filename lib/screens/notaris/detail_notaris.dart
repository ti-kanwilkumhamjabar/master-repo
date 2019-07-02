import 'package:flutter/material.dart';
import 'package:master_repo/data/data_notaris.dart';

class DetailNotaris extends StatelessWidget {
  final DataNotaris data;
  final Function onPressed;

  DetailNotaris({
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
                  title: Text("",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.asset('images/image1.jpeg',
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Column(
              children: <Widget>[
                Text(
                  '\n${data.title}\n',
                  style: TextStyle(color: Colors.black, fontSize: 25.0, decorationThickness: 5),
                ),
                Text('${data.description}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}