

import 'package:flutter/material.dart';

class Test1012 extends StatefulWidget {
  const Test1012({super.key});

  @override
  State<Test1012> createState() => _Test1012State();
}

class _Test1012State extends State<Test1012> {

String a = 'Smart';
String b = 'Cactle';
int c = 25;
double d = 30.5;
bool f = true;


  @override
  Widget build(BuildContext context) {
    
    List<int> fruits = [1, 2, 3, 4, 5];

    fruits.add(100);
    // fruits.add('babana');
    // fruits.add('orange');


    return Scaffold(
      appBar: AppBar(title: Text(
        'Урок6', 
        style: TextStyle(color:Colors.white, fontSize: 20),
        ),
      backgroundColor: Color.fromARGB(255, 244, 133, 64),
      centerTitle: true,
      ),
      body: 
      Center(
        child:Column(
    
        children: [
          SizedBox(height: 20),
        
          Text(
          fruits.toString(), 
          textAlign: TextAlign.center,
          style: TextStyle (fontSize: d, color: const Color.fromARGB(255, 244, 133, 64)),
        
        )
        ],
        )

      ),
    );
  }
}