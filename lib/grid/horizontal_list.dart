import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              image_location: 'images/icon_new/pengayoman.png',
              image_caption:'PENGAYOMAN'),
          Category(image_location: 'images/icon_new/imigrasi.png', image_caption:'IMIGRASI'),
          Category(image_location: 'images/icon_new/pemasyarakatan.png', image_caption:'PEMASYARAKATAN'),
          Category(image_location: 'images/icon_new/ahu.png', image_caption:'AHU')

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {

  final String image_location;
  final String image_caption;


  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Center(
          child: Container(
            width: 110.0,
            child: ListTile(
              title: Image.asset(image_location, height: 60.0,width: 80.0),
              subtitle: Container(alignment: Alignment.topCenter,child: Text(image_caption, style: TextStyle(color: Colors.black, fontSize: 8.0))),
            ),
          ),
        ),
      ),
    );
  }
}

