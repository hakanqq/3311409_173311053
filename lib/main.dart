import 'package:flutter/material.dart';
import 'package:spordanismanligi/Pages/Homepage.dart';
import 'package:spordanismanligi/Pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: "Hakan",
      theme:ThemeData(
          primaryColor: Colors.red,
          accentColor: Colors.blue,
          scaffoldBackgroundColor: Colors.blue.shade900),
      home: LoginPage (),



    );

  }
  
}