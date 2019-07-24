import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:master_repo/components.dart';
import 'package:master_repo/screens/login/login.dart';
import 'package:master_repo/screens/login/registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration:Duration(seconds: 5),vsync: this,);
    controller.forward();
    animation = ColorTween(begin: Colors.red, end: Colors.white).animate(controller);
    controller.addListener((){
      setState(() {
        print(animation.value);
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                  height: 100.0,
                ),
                Text('Siemil', style: TextStyle(fontSize: 40.0),),
                SizedBox(
                  width: 20.0,
                  height: 100.0,
                ),
                RotateAnimatedTextKit(
                  text:['PASTI', 'KANWIL', 'JABAR', 'JUARA'],
                  textStyle: TextStyle(
                    fontSize: 40.0,
                  ),
                  textAlign: TextAlign.start,
                  alignment: AlignmentDirectional.topStart,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            new RoundedButton(title: 'Log In',color: Colors.lightBlueAccent, onPressed: (){
              Navigator.pushNamed(context, LoginScreen.id);
            },),
            RoundedButton(
                title: 'Register',
                color: Colors.lightBlue,
                onPressed: (){
                  Navigator.pushNamed(context, RegistrationScreen.id);
                })
          ],
        ),
      ),
    );
  }
}
