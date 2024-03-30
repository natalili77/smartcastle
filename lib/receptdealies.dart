
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReceptDetails extends StatefulWidget {
  //переменные - данные рецепта
  String name;
  String image;
  String rating;
  String cookTime;
  String kuhnya;
  List<String> ingredients;

  
  






   ReceptDetails({super.key,
   required this.name,
    required this.image,
    required this.rating,
    required this.cookTime,
    required this.kuhnya,
    required this.ingredients, });

  @override
  State<ReceptDetails> createState() => _ReceptDetailsState();
}

class _ReceptDetailsState extends State<ReceptDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 95, 240, 100),
        title: Center(child: Text('Рецепт 1', style: TextStyle(
          fontSize: 24,
        )), ),
      
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [ Image.network(widget.image),
              Positioned(
                top: 20,
                right: 20,
                child: Text(
                  widget.rating,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold

                  ),
                 ),
              )
              ]
              ),
            SizedBox(height: 10),
            Text(
              widget.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'рейтинг: ${widget.rating}',          
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('Ингредиенты',
            style: TextStyle(fontSize: 18, ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 20, right: 20),
               child: ListView.builder(
                itemCount: widget.ingredients.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      widget.ingredients[index],
                      style: TextStyle(fontSize: 20),
                    ),
                  );
                }
               
               ),
             ),
            ],
        
        ),
      ),
    );
  }
}