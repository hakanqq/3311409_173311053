import 'package:flutter/material.dart';

class TersLunge extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ters Lunge"),),
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
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("Assets/terslunge.jpg")) ),
                height:300, //MediaQuery.of(context).size.height,
                width:300,//MediaQuery.of(context).size.width,
              ),
        Text(
            "Baldır ve karın kaslarını çalıştıran ters lunge hareketi, aynı zamanda denge yeteneğinizin de artmasına yardımcı olur. Postur bozuklukları için de ideal bir hareket olan ters lunge egzersizini başlangıç için 8’erli 3 set uygulamanız yeterlidir. Sıkı bir baldır formu ve güçlü karın kaslarına sahip olmanıza yardımcı olan ters lunge hareketi için;"
                "\n\n\n-Ayaklarınızı omuz genişliğinde açın. Karın, kalça ve bacak kaslarınızı sıkın."
                "\n\n-Önce sol ayağınızla geriye doğru bir adım atın ve topuğunuzun üzerinde durun. Dizinizi 90 derecelik bir açıyla bükün ve bu pozisyonda birkaç saniye bekledikten sonra başlangıç pozisyonuna dönün."
                "\n\n-Sonra sağ ayağınızla hareketi tekrarlayın. Ellerinizi belinize koyabilirsiniz ya da serbest halde durabilir."
          ),
          ],
        ),
    ),
      )),
    );

  }

}