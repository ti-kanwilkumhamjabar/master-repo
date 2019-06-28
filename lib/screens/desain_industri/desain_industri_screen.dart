import 'package:flutter/material.dart';
import 'package:master_repo/data/data_desain_industri.dart';

class DesainIndustriScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: .5,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {},
      ),
      title: Text('Desain Industri'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    ///create book tile hero
    createTile(DataDesainIndustri dataDesainIndustri) => Hero(
      tag: dataDesainIndustri.title,
      child: Material(
        elevation: 15.0,
        shadowColor: Colors.yellow.shade900,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'detail/${dataDesainIndustri.title}');
          },
          child: Image(
            image: AssetImage(dataDesainIndustri.image),
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
            children: dataDesainIndustri.map((book) => createTile(book)).toList(),
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