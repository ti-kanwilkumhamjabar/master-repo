import 'package:flutter/material.dart';
import 'package:master_repo/data/data_merek.dart';


class MerekScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: .5,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {},
      ),
      title: Text('Merek'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    ///create book tile hero
    createTile(DataMerek dataMerek) => Hero(
      tag: dataMerek.title,
      child: Material(
        elevation: 15.0,
        shadowColor: Colors.yellow.shade900,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'detail/${dataMerek.title}');
          },
          child: Image(
            image: AssetImage(dataMerek.image),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );

    ///create book grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: dataMerek.map((book) => createTile(book)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      body: grid,
    );
  }
}


