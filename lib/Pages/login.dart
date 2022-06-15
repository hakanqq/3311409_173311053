import 'package:flutter/material.dart';
import 'package:spordanismanligi/Pages/Homepage.dart';
import 'package:spordanismanligi/Pages/loginScreen.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EVDE SPOR',
        home: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text("EVDE SPOR" , style: TextStyle( fontSize: 60 , fontWeight: FontWeight.w900,  color:(Colors.blue) ),),
              Container(
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("Assets/welcomepage.jpg")) ),
                height:500, //MediaQuery.of(context).size.height,
                width:500,//MediaQuery.of(context).size.width,
              ),
            TextButton(onPressed:  (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> loginScreen() ));
            }, child: Text("Hoşgeldiniz →" , style: TextStyle( fontSize: 20 , fontWeight: FontWeight.w900, color: (Colors.blueAccent )),))
            ],
          ),
        ),
      ),
    );
  }
}