import 'package:flutter/material.dart';

class DizUstundeSinav extends StatelessWidget{
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar (title: Text("Diz Üstünde Şıanv"),),
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
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("Assets/dizsinav.jpg")) ),
      height:300, //MediaQuery.of(context).size.height,
      width:300,//MediaQuery.of(context).size.width,
    ),
        Text("Egzersize yeni başlayanlar için normal şınava göre daha kolay olan diz üstünde şınav, kol, karın, kalça ve omuz kasları için etkili bir egzersizdir. Başlangıç olarak 5’erli 3 set halinde yapabilirsiniz. Kaslarınız güçlendikçe ayak parmak uçlarını kullanarak normal şınav deneyebilirsiniz. Daha şekilli kollara sahip olmanızı sağlayan diz üstü şınav için;"
            "\n\n\n-Avuç içleriniz ve dizleriniz yerde pozisyon alın. Başınızı kaldırın ve ileriye doğru bakın."
            "\n\n-Başınız, sırtınız ve kalçanız düz bir çizgi oluşturacak şekilde kendiniz yere doğru dirseklerinizi bükerek indirin."
            "\n\n-Dirseklerinizin 45 derecelik bir açı yapmasına dikkat edin. Daha sonra başlangıç pozisyonuna geri dönün. Hareketi yaparken karın kaslarınızı sıkmayı unutmayın."
        ),
              ],
          ),
      ),
  )),
  );

}

}