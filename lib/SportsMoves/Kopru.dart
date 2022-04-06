import 'package:flutter/material.dart';

class Kopru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Köprü"),),
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
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("Assets/kopru.jpg")) ),
                height:300, //MediaQuery.of(context).size.height,
                width:300,//MediaQuery.of(context).size.width,
              ),
          Text(
              "Karın, kalça, sırt ve boyun kaslarını güçlendiren köprü hareketi, esnekliğinin de artırılmasına yardımcı olur. Isınma hareketi olarak da kullanılabilen köpür hareketini başlangıç için günde 8’erli 3 set halinde yapabilirsiniz. Daha gülü boyun kasları ve sıkı karın kaslarına sahip olmanızı sağlayan köprü hareketi için;"
                  "\n\n\n-Yere sırt üstü uzanın ve ayaklarını yere düz basın, kollarınızı da serbest şekilde yanınıza bırakın."
                  "\n\n-Karın ve kalça kaslarınızı sıkın, ayaklarınızdan destek alarak kalçanızı yerden kaldırın."
                  "\n\n-Kürek kemikleriniz yerde olacak şekilde gövdenizi kaldırabileceğiniz kadar kaldırın ve bu pozisyonda birkaç saniye bekleyip, başlangıç pozisyonuna geri dönün."
                  "\n\n-Kalçanızı yukarıya kaldırdığınızda sıkabildiğiniz kadar sıkmalısınız."
        ),
      ],
    ),
      ),
    )),
    );

  }

}