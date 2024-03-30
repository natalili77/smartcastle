import 'package:flutter/material.dart';

class Test1512 extends StatefulWidget {
  const Test1512({super.key});

  @override
  State<Test1512> createState() => _Test1512State();
}

class _Test1512State extends State<Test1512> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(252, 249, 248, 248),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(253, 238, 98, 98),
        leading: Image.asset('assets/rd3.png'),
        centerTitle: true,
        title: Text(
          'RedDog portfolio'
        ),
      ),
      body: Column(      
        children: [
          ElevatedButton(child: Text('WEB',style: TextStyle (color: Colors.white, fontSize: 20)),
            style: ElevatedButton.styleFrom (backgroundColor: Color.fromARGB(255, 18, 225, 81)),
            
            
            
             onPressed: (){
              Navigator.pop(context);
            
                   
            },),


        ],
      ),
      
    );
  }
}
