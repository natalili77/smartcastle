import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TrevelTurkestan'),
      backgroundColor: Colors.blue,
      ),
        
      body: SingleChildScrollView(
    
        child: Center(
          child: Column(
            children: [
                  SizedBox(
                    height: 10,
                  ),
                Container(
                height: 300,
                width: 300,
                color: Colors.blue,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset('assets/image.png', height: 300, width: 300,),
                
              
            ]
          ),
          ),
    
          
        ),
      );
  }
}