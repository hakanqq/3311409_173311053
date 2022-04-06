import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spordanismanligi/Pages/EndeksHesaplama.dart';
import 'package:spordanismanligi/SportsMoves/Crunch.dart';
import 'package:spordanismanligi/SportsMoves/DizKaldirma.dart';
import 'package:spordanismanligi/SportsMoves/DizUstundeSinav.dart';
import 'package:spordanismanligi/SportsMoves/Plank.dart';
import 'package:spordanismanligi/SportsMoves/Squat.dart';
import 'package:spordanismanligi/SportsMoves/TersLunge.dart';
import 'package:spordanismanligi/SportsMoves/YanBacakKaldirma.dart';

import '../SportsMoves/Kopru.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    appBar: AppBar(
      title: Text("EVDE SPOR")),
    body: SingleChildScrollView(
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>  [
              SizedBox(
               height:100,
                width: 400,
                child: InkWell(
                  child: Container(
                    color: Colors.white54,
                    child:Center(
                      child: Text(
                        "Vücut Kitle Endeksinizi Öğrenin",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black
                        ),

                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> EndeksHesaplama() ));
                  },

                )
              ),
              SizedBox(
                  height:180,
                  width: 250,
                  child: InkWell(
                    child: Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[Image.asset("Assets/lunge.jpg")],

                      )
                    ),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> TersLunge() ));
                    },

                  )
              ),
              Text("LUNGE \n\n", style: TextStyle( fontSize: 40 , fontWeight: FontWeight.w900,  color:(Colors.white) ),),
              SizedBox(
                  height:180,
                  width: 250,
                  child: InkWell(
                    child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[Image.asset("Assets/squaat.jpg")],

                        )
                    ),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> Squat() ));
                    },

                  )
              ),
              Text("SQUAT \n\n", style: TextStyle( fontSize: 40 , fontWeight: FontWeight.w900,  color:(Colors.white) ),),
              SizedBox(
                  height:180,
                  width: 250,
                  child: InkWell(
                    child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[Image.asset("Assets/dizustsinav222.jpg")],

                        )
                    ),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> DizUstundeSinav() ));
                    },

                  )
              ),
              Text("DİZ ÜSTÜNDE ŞINAV \n\n", style: TextStyle( fontSize: 40 , fontWeight: FontWeight.w900, color:(Colors.white) ),),
              SizedBox(
                  height:180,
                  width: 250,
                  child: InkWell(
                    child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[Image.asset("Assets/yanbacakkaldrima.jpg")],

                        )
                    ),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> YanBacakKaldirma() ));
                    },

                  )
              ),
              Text("YAN BACAK KALDIRMA \n\n", style: TextStyle( fontSize: 35 , fontWeight: FontWeight.w900, color:(Colors.white) ),),
              SizedBox(
                  height:180,
                  width: 250,
                  child: InkWell(
                    child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[Image.asset("Assets/kopruu.jpg")],

                        )
                    ),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> Kopru() ));
                    },

                  )
              ),
              Text("KÖPRÜ HAREKETİ \n\n", style: TextStyle( fontSize: 40 ,fontWeight: FontWeight.w900, color:(Colors.white) ),),
              SizedBox(
                  height:180,
                  width: 250,
                  child: InkWell(
                    child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[Image.asset("Assets/crunch.jpg")],

                        )
                    ),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> Crunch() ));
                    },

                  )
              ),
              Text("CRUNCH \n\n", style: TextStyle( fontSize: 40 ,fontWeight: FontWeight.w900, color:(Colors.white) ),),

              SizedBox(
                  height:180,
                  width: 250,

                  child: InkWell(
                    child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           mainAxisSize: MainAxisSize.max,
                          children: <Widget>[Image.asset("Assets/plankk.jpg",
                            fit:BoxFit.cover)],


                        )
                    ),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> Plank() ));
                    },

                  )
              ),
              Text("PLANK \n\n", style: TextStyle( fontSize: 40 ,fontWeight: FontWeight.w900, color:(Colors.white) ),),
              SizedBox(
                  height:180,
                  width: 250,
                  child: InkWell(
                    child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[Image.asset("Assets/dizkaldirmaa.jpg")],

                        )
                    ),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> DizKaldirma() ));
                    },

                  )
              ),
              Text("DİZ KALDIRMA \n\n", style: TextStyle( fontSize: 40 ,fontWeight: FontWeight.w900, color:(Colors.white) ),),


            ]
          )
        ),
      )


    )


    );












  }



}