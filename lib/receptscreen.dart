import 'dart:convert';

import 'package:dz1012/receptdealies.dart';
import 'package:dz1012/receptmodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class receptscreen extends StatefulWidget {
  const receptscreen({super.key});

  @override
  State<receptscreen> createState() => _receptscreenState();
}

class _receptscreenState extends State<receptscreen> {
  List<Recipes> recipes = [];

  @override
  void initState() {
    super.initState();

    getRecepts();
  }

  Future getRecepts() async{
    final response = await http.get(Uri.parse('https://dummyjson.com/recipes'));
    if (response.statusCode == 200) {
    receptmodel receptmodel1 = receptmodel.fromJson(jsonDecode(response.body));

    setState(() {
      recipes = receptmodel1.recipes!;
    });
  } 

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 95, 240, 100),
        title: Center(child: Text('Рецепты', style: TextStyle(
          fontSize: 24,
        )), ),
      
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () {

                Navigator.push(
                  context, MaterialPageRoute(builder: (context)
                  => ReceptDetails(
                    name: recipes[index].name!,
                    image: recipes[index].image!,
                    rating: recipes[index].rating.toString(),
                    cookTime: recipes[index].cookTimeMinutes.toString(),
                    kuhnya: recipes[index].cuisine!,
                    ingredients: recipes[index].ingredients!,

              
                  )));

              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black54)
                ),
                child: Column(
                  children: [
                    Image.network(recipes[index].image!),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(recipes[index].name!,
                      style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      
      ),

    );
  }
}