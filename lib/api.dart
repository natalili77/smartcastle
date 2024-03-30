import 'dart:convert';


import 'package:dz1012/apiinfo.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class api extends StatefulWidget {
  const api({super.key});

  @override
  State<api> createState() => _apiState();
}

class _apiState extends State<api> {
  String textFromServer = '';
  int IdFromServer = 0; 
  String userIdServer = '';
  

  

  @override
  void initState() {
    super.initState();

    getInfo();
  }


//функция посылания запроса на сервер ГЕТ
  Future<apiinfo> getInfo() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    print(response.statusCode);
    if (response.statusCode == 200) {
      apiinfo Info = apiinfo.fromJson(jsonDecode(response.body));
      setState(() {
        textFromServer = Info.title!;
        IdFromServer = Info.id!;
        userIdServer = Info.userId.toString();
      });
      return Info;

      // return apiinfo.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw 'ошибка запроса';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('API')),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        Text('Text in server2', style: TextStyle(fontSize: 25)),
        Flexible(child: Text(textFromServer, style: TextStyle(fontSize: 35))),
        Flexible(child: Text(IdFromServer.toString(), style: TextStyle(fontSize: 45))),
        Flexible(child: Text(userIdServer, style: TextStyle(fontSize: 55))),
      ]),
    );
  }
}
