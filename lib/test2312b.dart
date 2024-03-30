

import 'package:flutter/material.dart';

class Test2312b extends StatefulWidget {
  const Test2312b({super.key});

  @override
  State<Test2312b> createState() => _Test2312bState();
}
class _Test2312bState extends State<Test2312b> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Second'),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 18, 225, 81),
      ),
      body: 
      Column(
        children: [SizedBox(height: 20),
        Text('2 str', style: TextStyle(fontSize: 20)),
         Padding(
           padding: const EdgeInsets.all(10),
           child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(child: Text('Назад',style: TextStyle (color: Colors.white, fontSize: 20)),
            style: ElevatedButton.styleFrom (backgroundColor: Color.fromARGB(255, 18, 225, 81)),
            
            
            
             onPressed: (){
              Navigator.pop(context);
            
                   
            },),
                   ),
         )
        ],
      ),
      );
      
      
  }
}