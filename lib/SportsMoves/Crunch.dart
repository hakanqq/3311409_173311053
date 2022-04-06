import 'package:flutter/material.dart';

class Crunch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Crunch"),),
      body: SingleChildScrollView(
    child: Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
    Color.fromARGB(255, 6, 40, 97),
    Colors.blue,
    Color.fromARGB(255, 55, 208, 235),
    ])),
                child: Center(
                  child: Column(
                  children: [
            Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("Assets/crunch1221.jpg")) ),
        height:300, //MediaQuery.of(context).size.height,
        width:300,//MediaQuery.of(context).size.width,
      ),
           Text(
               "Karın kasları için en etkili egzersizlerden biri olan crunch, düzenli yapıldığında hem alt hem de üst karın bölgesinde yer alan yağların erimesine yardımcı olur. Başlangıç olarak 8’erli 3 set halinde yapmanız yeterlidir. Karın kasları güçlendikçe set ve tekrar sayısını arttırabilirsiniz. Sıkı bir karın kasına sahip olmanızı sağlayan crunch hareketi için;"
              "\n\n\n-Sırtüstü yere uzanın. Ayaklarınız yere düz basacak şeklide dizlerinizi 45 derece açıyla bükün. Kollarınızı dirseklerden bükerek parmaklarınızı başınızın her iki yanına koyun."
              "\n\n-Nefes alın ve nefes vererek gövdenizi yukarıya doğru kaldırın. Kürek kemiklerinizin tamamı yerden kalkmış olmalı."
              "\n\n-Yukarıdayken karın kaslarınızı sıkabildiğiniz kadar sıkın ve yukarıda nefes alıp nefes vererek başlangıç pozisyonuna geri dönün."
                    ),
                ],
              ),
            ),
          )),
      );

  }

}