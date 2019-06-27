import 'package:flutter/material.dart';

const String name = "NAME";
const String loc = "Kanwil Jabar";
const String username = "USERNAME";
const String password = "PASSWORD";

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SafeArea(child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 80.0,
          backgroundImage: AssetImage('images/login.png'),
        ), Text(username, style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 30.0,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
        ),
          Text(password, style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
          ),
      SizedBox(
        height: 20.0,
        width: 150.0,
        child: Divider(
          color: Colors.white,
        ),
      ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: ListTile(
            leading: Icon(Icons.phone, color: Colors.blueGrey,),
            title: Text('0123456789',
            style: TextStyle(
              color: Colors.blueGrey,
              fontFamily: 'Roboto',
              fontSize: 15.0,
            ),),

          ),
        ),

        Card(
          margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
          child: ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.blueGrey,
            ),
            title: Text('Email',
            style: TextStyle(
              color: Colors.blueGrey,
              fontFamily: 'Roboto',
              fontSize: 15.0,
            ),),
          ),
        )
        ],))
    );
  }
}