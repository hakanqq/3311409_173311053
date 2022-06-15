import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:spordanismanligi/Pages/Homepage.dart';
import 'package:spordanismanligi/Pages/login.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: "Hakan",
      theme:ThemeData(
          primaryColor: Colors.red,
          scaffoldBackgroundColor: Colors.blue.shade900, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue)),
      home: LoginPage (),



    );

  }
  
}