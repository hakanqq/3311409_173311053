import 'package:flutter/material.dart';

class Plank extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(title: Text("Plank"),),
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
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("Assets/plank.jpg")) ),
    height:300, //MediaQuery.of(context).size.height,
    width:300,//MediaQuery.of(context).size.width,
  ),
          Text("Karın kaslarını güçlendiren bir diğer etkili hareket ise planktır. Karın kaslarının yanı sıra, kol, kalça ve bacak kaslarının da çalışmasına yardımcı olur. Yer çekimine meydan okuyan plank hareketini başlangıç için 10-15 saniyelik 3 set halinde yapabilirsiniz. Karın kaslarınız güçlendikçe set sayısını ve süresini arttırabilirsiniz. Düz bir karına ve sıkı bir kalçaya sahip olmanızı sağlayan plank hareketi için;"
                "\n\n\n-Yüzüstü uzanın. Avuç içleriniz ve ayak parmak uçlarınız üzerinde tüm gövdenizi yukarıya kaldırın."
                "\n\n-Sırt, kalça ve başınızın aynı hizada olmasına dikkat edin."
                "\n\n-Yukarıdayken karın ve kalça kaslarınızı mümkün olduğunca sıkın."
                "\n\n-Yavaşça başlangıç pozisyonuna dönün."
                "\n\n-Başlangıç için hareketi dizleriniz ve dirsekleriniz üzerinde yapabilirsiniz."),

    ],
    ),
    ),
    )),
    );

  }

}