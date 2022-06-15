import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spordanismanligi/Pages/registerpage.dart';
import 'package:spordanismanligi/main.dart';

import 'Homepage.dart';

class loginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();

}
final TextEditingController _email=TextEditingController();
final TextEditingController _sifre=TextEditingController();
Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: <Widget>[
      Text(
        'Email',
            style: TextStyle(
                color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold

  ),
      ),
      SizedBox(height: 10),
      Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0,2)
              )
            ]
          ),
          height: 60,
          child: TextField(

            controller: _email,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xFF0B548D),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(
                color: Colors.black38
              )
            ),
  ),
      )
    ],
  );
}
Widget buildPyassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Şifre',
        style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold

        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0,2)
              )
            ]
        ),
        height: 60,
        child: TextField(
          controller: _sifre,
          obscureText:true ,
          style: TextStyle(
            color: Colors.black87,
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFF0B548D),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                  color: Colors.black38
              )
          ),
        ),
      )
    ],
  );
}


class _LoginScreenState extends State<loginScreen> {


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: AnnotatedRegion<SystemUiOverlayStyle>(
       value: SystemUiOverlayStyle.light,
       child: GestureDetector(
         child: Stack(
           children: <Widget>[
             Container(
               height: double.infinity,
               width: double.infinity,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   begin: Alignment.topCenter,
                   end: Alignment.bottomCenter,
                   colors: [
                     Color(0x660B548D),
                     Color(0x990B548D),
                     Color(0xcc0B548D),
                     Color(0xFF0B548D),

                   ]
                 )
               ),
               child: SingleChildScrollView(
                 physics: AlwaysScrollableScrollPhysics(),
                 padding: EdgeInsets.symmetric(
                   horizontal: 25,
                   vertical: 120

                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Text(
                       'GİRİŞ',
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 40,
                           fontWeight: FontWeight.bold
                       ),
                     ),
                     SizedBox(height: 50),
                     buildEmail(),
                     SizedBox(height: 20),
                     buildPyassword(),
                     SizedBox(height: 20),
                 Container(
                   padding: EdgeInsets.symmetric(vertical: 25),
                   width: double.infinity,
                   child: ElevatedButton(
                     onPressed: signIn,

                     style: ElevatedButton.styleFrom(
                       primary: Colors.white,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15),

                       ),

                     ),
                     child: Text(
                       'Giriş Yap',
                       style: TextStyle(
                         color: Color(0xFF0B548D),
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                 ),
                     Container(
                       padding: EdgeInsets.symmetric(vertical: 25),
                       width: double.infinity,
                       child: ElevatedButton(
    onPressed:  () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => RegisterPage()));
    },

                         style: ElevatedButton.styleFrom(
                           primary: Colors.white,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(15),

                           ),

                         ),
                         child: Text(
                           'Kayıt Ol',
                           style: TextStyle(
                             color: Color(0xFF0B548D),
                             fontSize: 18,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ),
                     )

                   ],
                 ),
               ),
             )
           ],
         )
       ),
     ),

   );
  }
  Future signIn() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
        email: _email.text.trim(),
        password: _sifre.text.trim())
        .then((uid) => {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: ((context) => Homepage())))
    });
  }
}
