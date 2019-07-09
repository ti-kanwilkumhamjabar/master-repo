import 'package:flutter/material.dart';
import 'package:master_repo/screens/login/chat_screen.dart';
import 'package:master_repo/screens/login/login_screen.dart';
import 'package:master_repo/screens/login/registration_screen.dart';
import 'package:master_repo/screens/login/welcome_screen.dart';

class MainLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        RegistrationScreen.id:(context)=>RegistrationScreen(),
        ChatScreen.id:(context)=>ChatScreen(),
      },
    );
  }
}