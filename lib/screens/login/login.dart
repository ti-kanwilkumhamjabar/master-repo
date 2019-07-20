import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String id;
  String password;

  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _textLogin(),
          _userId(),
          _userPassword(),
          _loginButton(),
        ],
      ),
      )
    );
  }

  Widget _textLogin()=>
      Center(
        child: Text('Please Login', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
      );

  Widget _userId()=>
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(child: Text('User Id', style: TextStyle(fontSize: 22.0),)),
          Expanded(child: TextField(controller: myController,))
        ],
      );

  Widget _userPassword()=>
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(child: Text('Password')),
          Expanded(child: TextField(controller: myController,))
        ],
      );

  Widget _loginButton()=>
      RaisedButton(
        child: Text('LOG IN', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginNext()));
          },
          shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(35.0)
      ),
      );
}


class LoginNext extends StatefulWidget {
  @override
  _LoginNextState createState() => _LoginNextState();
}

class _LoginNextState extends State<LoginNext> {
  String id;
  String password;

  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _textLogin(),
//              _userId(),
//              _userPassword(),
              _loginButton(),
            ],
          ),
        )
    );
  }

  Widget _textLogin()=>
      Center(
        child: Text('Welcome To new Screen', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
      );

  Widget _userId()=>
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(child: Text('User Id', style: TextStyle(fontSize: 22.0),)),
          Expanded(child: TextField(controller: myController,))
        ],
      );

  Widget _userPassword()=>
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(child: Text('Password')),
          Expanded(child: TextField(controller: myController,))
        ],
      );

  Widget _loginButton()=>
      RaisedButton(
        child: Text('previous', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
        onPressed: (){
          Navigator.pop(context);
        },
        shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(35.0)
        ),
      );
}

