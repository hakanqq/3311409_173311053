import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';



class EndeksHesaplama extends StatefulWidget {
  @override

  EndeksHesaplamaState createState() => EndeksHesaplamaState();

}

class EndeksHesaplamaState extends State <EndeksHesaplama> {
  double? boy, kilo, vki;
  var _formKey = GlobalKey<FormState>();
  String? sonuc;
//dosyaYolunu oluşturulması
  Future<String> get getDosyaYolu async {
    Directory dosya = await getApplicationDocumentsDirectory();
    return dosya.path;
  }

  //Dosyanın oluşturulması
  Future get dosyaOlustur async {
    var dosyakonumu = await getDosyaYolu;
    return File(dosyakonumu + "/olusturulandosya.txt");
  }

  //dosyaya yazma işlemi
  Future dosyaYaz(String dosyaninIcerigi) async {
    var myDosya = await dosyaOlustur;

    return myDosya.writeAsString(dosyaninIcerigi);
  }

  //dosyayı okuma
  Future<String> okunacakDosya() async {
    var myDosya = await dosyaOlustur;

    String dosyaicerigi = myDosya.readAsStringSync();
    return dosyaicerigi;
  }

  //Form Field'dan Input alabilmemiz için controller yapısı
  TextEditingController degercontroller = TextEditingController();

  //Dosyaya yazılan veriyi ekranda gösterebilmek için gerekli degişken
  var gosterilecekDeger = "";

  //Snackbar'ı kullanabilmek için gerekli key
  var key = GlobalKey();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Vücut Kitle Endeksi"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(border: Border.all()),
                  margin: EdgeInsets.all(25),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) => validateSayi(value!),
                    onSaved: (value) => boy = double.parse(value!) / 100,
                    decoration: InputDecoration(
                      labelText: "Boy Giriniz. (cm)",

                    ),

                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all()),
                  margin: EdgeInsets.all(25),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) => validateSayi(value!),
                    onSaved: (value) => kilo = double.parse(value!),
                    decoration: InputDecoration(
                      labelText: "Kilo Giriniz. (kg)",
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text("HESAPLA"),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      print("$boy $kilo");
                      setState(() {
                        vkiHesapla();
                      });
                    }
                  },
                ),
                vki != null
                    ? Text(
                  "Vücut Kitle İndeksi:$vki",
                  style: TextStyle(fontSize: 24),
                )
                    : Text(
                  "Lütfen Değer Giriniz",
                  style: TextStyle(fontSize: 24),
                ),
                sonuc != null
                    ? Text(
                  "$sonuc",
                  style: TextStyle(fontSize: 24),
                )

                :Container(),
                SizedBox(
                  height: 20,
                ),
                Container(

                  height: 200,
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextField(
                          controller: degercontroller,
                          decoration: new InputDecoration.collapsed(
                              hintText: 'Hedeflenen Kiloyu Giriniz',
                            hintStyle: TextStyle(
                              fontSize: 20,
                            )
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(onPressed: _Yaz, child: Text("Kaydet")),
                          ElevatedButton(onPressed: _Oku, child: Text("Göster")),
                        ],
                      ),
                      Text("$gosterilecekDeger"),
                    ],
                  ),
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                    color: Colors.green,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  void _Yaz() async {
    dosyaYaz(degercontroller.text.toString()).then((value) {
      setState(() { gosterilecekDeger=" ";

      });

    });
  }

  void _Oku() async {
    okunacakDosya().then((String deger) {
      setState(() {
        gosterilecekDeger = deger;
        debugPrint("$gosterilecekDeger");
      });
    });
  }


  void vkiHesapla() {
    vki = (kilo! / (boy! * boy!));
    vki = double.parse(vki!.toStringAsFixed(2));
    if (vki! < 18.5) {
      sonuc = "Zayıf";
    } else if (18.5 <= vki! && vki! < 25) {
      sonuc = "Normal Kilolu";
    } else if (25 <= vki! && vki! < 30) {
      sonuc = "Fazla Kilolu";
    } else if (30 <= vki! && vki! < 35) {
      sonuc = "1. Derece Obezite";
    } else if (35 <= vki! && vki! < 40) {
      sonuc = "2. Derece Obezite";
    } else if (40 <= vki! && vki! < 50) {
      sonuc = "3. Derece Obezite";
    } else if (50 <= vki! && vki! < 60) {
      sonuc = "Süper Obezite";
    } else if (vki! > 60) {
      sonuc = "Süper Obezite";
    }
    else {
      sonuc = "hata!1";
    }
  }

  validateSayi(String value) {
    if (value.length < 1) return 'Geçersiz';
    try {
      double.parse(value);
    } catch (e) {
      return "Geçersiz";
    }
  }
}
