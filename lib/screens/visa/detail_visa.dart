import 'package:flutter/material.dart';
import 'package:master_repo/data/data_visa.dart';

class DetailVisa extends StatelessWidget {
  final DataVisa book;
  DetailVisa(this.book);

  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: .5,
      title: Text('Visa'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search, size: 20,),
          onPressed: () {},
        )
      ],
    );

    ///detail of book image and it's pages
    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Hero(
            tag: book.title,
            child: Material(
              elevation: 15.0,
              shadowColor: Colors.yellow.shade900,
              child: Image(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );

    ///detail top right
    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(book.title,
            size: 16, isBold: true, padding: EdgeInsets.only(top: 16.0)),
        SizedBox(height: 32.0),

      ],
    );

    final topContent = Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2, child: topLeft),
          Flexible(flex: 3, child: topRight),
        ],
      ),
    );

    ///scrolling text description
    final bottomContent = Container(
      height: 350.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          book.description,
          style: TextStyle(fontSize: 13.0, height: 1.5),
        ),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }

  ///create text widget
  text(String data,
      {Color color = Colors.black87,
        num size = 14,
        EdgeInsetsGeometry padding = EdgeInsets.zero,
        bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
              color: color,
              fontSize: size.toDouble(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );
}