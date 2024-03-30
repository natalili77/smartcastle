import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'apiinfo.dart';

class Apilist extends StatefulWidget {
  const Apilist({super.key});

  @override
  State<Apilist> createState() => _ApilistState();
}

class _ApilistState extends State<Apilist> {

  //здесь прописать лист
  List<String> products = ['apple', 'baban', 'cola'];
  List<apiinfo> infoList = [];

  //кружочек загрузки
  bool ListLoading = false;

  @override
  void initState() {
    super.initState();

    getInfolist();
  }



  // тип метода запроса
  Future getInfolist() async {

    setState(() {
      ListLoading = true;
    });


    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    if (response.statusCode == 200) {
       //метод получения списка с сервера - ЗАПОМНИТЬ!
      List<apiinfo> apiList = List.from(jsonDecode(response.body))
      .map((map) => Map<String, dynamic>. from(map))
      .map((Map<String, dynamic> map) => apiinfo.fromJson(map))
      .toList();
      // присвоили лист
      setState(() {
        infoList = apiList;       
      });
      //метод сортирования по алфавиту 
      infoList.sort(((a, b) => a.title!.compareTo(b.title!))

      );
      setState(() {
        ListLoading = false;
        
      });
   
      print('vse ok!');
    } else {
      throw '4toto ne tak';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Api List', style: TextStyle(fontSize: 20, color: Colors.white)),),
        backgroundColor: Colors.blue,
      ),
      //body: ListView.builder(
      body: 

      ListLoading == true
      ? Center(child: CircularProgressIndicator())
      : 
     // полоса разделения
      ListView.separated(
        itemCount: infoList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),
            child: Text(
              infoList [index].title!,
              style: TextStyle(fontSize: 25),
            ),
          );

        },
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2,
            height: 0,
          );
        } ,
        ),
    );
    
  }
}
