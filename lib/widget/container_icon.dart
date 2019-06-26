import 'package:flutter/material.dart';
import 'package:master_repo/screens/hak_paten_screen.dart';
import 'package:master_repo/screens/hak_cipta_screen.dart';

class ContainerIcon extends StatelessWidget {

  final int imageIndex;
  final Function onPressed;

  ContainerIcon({
    @required this.imageIndex, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){

            if(this.imageIndex == 1){
              return HakPatenScreen();
            }
            else{
              return HakCiptaScreen();
            }

            //return HakPatenScreen();
          }));
        },
      child : Container(
          padding: EdgeInsets.all(3.0),
          height: 100.0,
          margin: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/$imageIndex.png'), fit: BoxFit.fitHeight),
            color: Colors.teal,
        ),
      ),
      ),
    );
  }
}