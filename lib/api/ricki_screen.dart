import 'dart:convert';

import 'package:dz1012/api/rickimodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//2 + as http
import 'package:http/http.dart' as http; 

class RickiScreen extends StatefulWidget {
  const RickiScreen({super.key});

  @override
  State<RickiScreen> createState() => _RickiScreenState();
}

class _RickiScreenState extends State<RickiScreen> {
  // 5- 
  List<Results> rickis = [];

  @override
  void initState() {
    super.initState();
    getRickis();
  }
  

  // 1 - создаем метод 
  Future getRickis() async {
    final response = await http
    .get(Uri.parse('https://rickandmortyapi.com/api/character?page=1'));

    //3 - проверяем статус код
    if (response.statusCode == 200) {
      RickiModel rickimodel = RickiModel.fromJson(jsonDecode(response.body));
      //6
      setState(() {
        rickis = rickimodel.results!;
        
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 252, 166, 29),
        title: Text('Ricki and Morty'),),
//7
      body: ListView.builder(
        itemCount: rickis.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  rickis[index].image!,
                 // 'https://rickandmortyapi.com/api/character?page=1',
                height: 200.0,
                width: 200.0,
                ),
              ),
              SizedBox(width: 5.0),
              Column(
                children: [
                  Text(
                    rickis[index].name!,
                    style: TextStyle(fontSize: 24),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: rickis[index].status == 'Alive'
                            ? Colors.green
                            : rickis[index].status == 'Dead'
                                ? Colors.amber
                                : Colors.grey
                        ),
                      
                        //margin: const EdgeInsets.all(10.0),
                        //color: Colors.amber,
                        width: 20.0,
                        height: 20.0,

                      ),
                      Text(
                        rickis[index].status!,
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Text(
                    rickis[index].species!,
                  )

                ],
              ),
              
            ],
          );
        }
        ),
    );
  }
}