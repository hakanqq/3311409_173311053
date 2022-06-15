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
import 'package:spordanismanligi/Pages/Grafik.dart';

import '../SportsMoves/Kopru.dart';

class sporhareketleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Spor Hareketleri"),),
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Column(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                            height:140,
                            width: 180,
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
                      ),
                      Text("LUNGE \n\n", style: TextStyle( fontSize: 15 , fontWeight: FontWeight.w900,  color:(Colors.black) ),),
                    ],
                  ),
                  Column(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                            height:140,
                            width: 180,
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
                      ),
                      Text("SQUAT \n\n", style: TextStyle( fontSize: 15 , fontWeight: FontWeight.w900,  color:(Colors.black) ),),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          child: Container(
                            color: Colors.white,
                            height: 140,
                              width: 180,

                              child: Image.asset("Assets/yanbacakkaldrima.jpg")
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> YanBacakKaldirma() ));
                          },

                        ),
                      ),
                      Text("YAN BACAK KALDIRMA \n\n", style: TextStyle( fontSize: 15 , fontWeight: FontWeight.w900, color:(Colors.black) ),),
                    ],
                  ),
                  Column(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          child: Container(
                              color: Colors.white,
                              height: 150,
                              width: 180,


                              child: Image.asset("Assets/dizustsinav222.jpg")
                          ),
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> DizUstundeSinav() ));
                          },

                        ),
                      ),
                      Text("DİZ ÜSTÜNDE ", style: TextStyle( fontSize: 15 , fontWeight: FontWeight.w900, color:(Colors.black) ),),
                      Text("ŞINAV ", style: TextStyle( fontSize: 15 , fontWeight: FontWeight.w900, color:(Colors.black) ),),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                            height:140,
                            width: 180,
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
                      ),
                      Text("CRUNCH \n\n", style: TextStyle( fontSize: 15 ,fontWeight: FontWeight.w900, color:(Colors.black) ),),
                    ],
                  ),
                  Column(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                            height:140,
                            width: 180,
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
                      ),
                      Text("KÖPRÜ HAREKETİ \n\n", style: TextStyle( fontSize: 15 ,fontWeight: FontWeight.w900, color:(Colors.black) ),),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                            height:140,
                            width: 180,
                            child: InkWell(
                              child: Container(

                                  child: Column(

                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[Image.asset("Assets/plankk.jpg")],

                                  )
                              ),
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=> Plank() ));
                              },

                            )
                        ),
                      ),
                      Text("PLANK \n\n", style: TextStyle( fontSize: 15 ,fontWeight: FontWeight.w900, color:(Colors.black) ),),
                    ],
                  ),
                  Column(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                            height:140,
                            width: 180,
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
                      ),
                      Text("DİZ KALDIRMA \n\n", style: TextStyle( fontSize: 15 ,fontWeight: FontWeight.w900, color:(Colors.black) ),),

                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
