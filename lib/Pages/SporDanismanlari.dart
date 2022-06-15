import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Models/ApiModel.dart';


const titleStyle = TextStyle(fontSize: 20);
const subTitleStyle = TextStyle(fontSize: 18);

class SporDanismanlari extends StatefulWidget {
  //SporDanismanlari({required Key key, required this.title}) : super(key: key);
  late final String title;

  @override
  _SporDanismanlariState createState() => _SporDanismanlariState();
}

class _SporDanismanlariState extends State<SporDanismanlari> {
  final url = Uri.parse('https://reqres.in/api/users');
  int? counter;
  var personalResult;

  Future callPerson() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        var result = personalFromJson(response.body);
        print(result.data[0].avatar);
        print(result.data[0].email);
        print(result.data[0].firstName);
        print(result.data[0].lastName);
        if (mounted)
          setState(() {
            counter = result.data.length;
            personalResult = result;
          });
        return result;
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    callPerson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Personel Listesi'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: counter != null
                ? ListView.builder(
                itemCount: counter,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      personalResult.data[index].firstName +
                          ' ' +
                          personalResult.data[index].lastName,
                      style: titleStyle,
                    ),
                    subtitle: Text(
                      personalResult.data[index].email,
                      style: subTitleStyle,
                    ),
                    leading: CircleAvatar(
                      backgroundImage:
                      NetworkImage(personalResult.data[index].avatar),
                    ),
                  );
                })
                : Center(child: CircularProgressIndicator())),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        backgroundColor: Colors.orange,
        onPressed: () {
          callPerson();
        },
      ),
    );
  }
}