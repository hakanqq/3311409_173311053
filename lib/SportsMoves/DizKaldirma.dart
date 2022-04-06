import 'package:flutter/material.dart';

class DizKaldirma extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Diz Kaldırma"),),
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
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("Assets/dizkaldirma.jpg")) ),
                height:300, //MediaQuery.of(context).size.height,
                width:300,//MediaQuery.of(context).size.width,
              ),

           Text(
              "Egzersize yeni başlayanlar için mükemmel bir kardiyo hareketi olan diz kaldırma, yağ yakımının hızlanmasına yardımcı olur. Müzik eşliğinde yapıldığında motivasyonunuzda arttırır. 2’şer dakikalık 3 set halinde hareketi tekrarlayabilirsiniz. Oldukça eğlenceli olan diz kaldırma hareketi için;"
                  "\n\n\n-Ayaklarınızı omuz genişliğinde açın. Kalça ve karın kaslarınızı sıkın."
                  "\n\n-Kollarınızı dirseklerden bükün ve ayağınızın birini dizden bükerek göğsünüze kadar çekip, bırakın."
                  "\n\n-Sonra diğer ayağınızı dizden bükerek göğsünüze kadar çekip, bırakın."
                  "\n\n-Hareketi seri halde hızlı bir şekilde tekrarlayın ve bu sırada kollarınızı da öne arkaya doğru hareket ettirin."
        ),
      ],
    ),
      ),
    )),
    );

  }

}