import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spordanismanligi/Pages/EndeksHesaplama.dart';
import 'package:spordanismanligi/Pages/SporHareketleri.dart';
import 'package:spordanismanligi/Pages/SporDanismanlari.dart';
import 'package:spordanismanligi/SportsMoves/Crunch.dart';
import 'package:spordanismanligi/SportsMoves/DizKaldirma.dart';
import 'package:spordanismanligi/SportsMoves/DizUstundeSinav.dart';
import 'package:spordanismanligi/SportsMoves/Plank.dart';
import 'package:spordanismanligi/SportsMoves/Squat.dart';
import 'package:spordanismanligi/SportsMoves/TersLunge.dart';
import 'package:spordanismanligi/SportsMoves/YanBacakKaldirma.dart';
import 'package:spordanismanligi/Pages/Grafik.dart';

import '../SportsMoves/Kopru.dart';


class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    appBar: AppBar(
      title: Text("EVDE SPOR")),
    body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              opacity: 0.3,
              image: AssetImage("Assets/sporapp2.jpg"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                child: Container(

                  color: Colors.white54,
                  child:Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
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
                ),
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> EndeksHesaplama() ));
                },

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                child: Container(

                  color: Colors.white54,
                  child:Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Türkiye'de Spor Yapma Grafiği",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black
                        ),

                      ),
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> Grafik() ));
                },

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                child: Container(

                  color: Colors.white54,
                  child:Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "SPOR HAREKETLERİ → ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black
                        ),

                      ),
                    ),
                  ),
                ),
                onDoubleTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> sporhareketleri() ));
                },

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                child: Container(

                  color: Colors.white54,
                  child:Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Spor Danışmanları → ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black
                        ),

                      ),
                    ),
                  ),
                ),
                onLongPress: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> SporDanismanlari() ));
                },

              ),
            ),




    ]
        )
      ),
    )


    );












  }



}