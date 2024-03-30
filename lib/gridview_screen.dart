import 'dart:convert';

import 'package:dz1012/gridview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class GreedViewScreen extends StatefulWidget {
  const GreedViewScreen({super.key});

  @override
  State<GreedViewScreen> createState() => _GreedViewScreenState();
}

class _GreedViewScreenState extends State<GreedViewScreen> {

  List<Products>? newFromServer = [];

  bool ListLoading = false;

  Future getProducts () async {
    final response = await http.get(
      Uri.parse('https://dummyjson.com/products'),);
    if (response.statusCode == 200) {
      greedview newsModel = greedview.fromJson(jsonDecode(response.body));
      setState(() {
        newFromServer = newsModel.products;
      });

      setState(() {
        ListLoading = false;
      });
    } else {
      throw 'ошибка запроса';
    }
  }      



//запрос
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Каталог', style: TextStyle(color: Colors.white),))
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
         return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Image.network('https://avatarko.ru/img/kartinka/19/zhivotnye_kot_18199.jpg'),
                  Text(
                    newFromServer![index].title!,
                  ),
                  // Text(newFromServer![index].price!,
                  // ),
                  // Image(image: 1,)
                ],
              ),
            );

          },
      ),
    



    );
  }}
