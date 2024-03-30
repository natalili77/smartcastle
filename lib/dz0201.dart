import 'package:dz1012/dz0201log.dart';
import 'package:dz1012/dz0202.dart';
import 'package:flutter/material.dart';


class Dz0201 extends StatefulWidget {
  const Dz0201({super.key});

  @override
  State<Dz0201> createState() => _Dz0201State();
}

class _Dz0201State extends State<Dz0201> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Color.fromARGB(255, 0, 0, 0)]),
              ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
        children: [ 
          SizedBox(height: 160),
          Center(child: Image.asset('assets/cocteil.png', width: 300, height: 300)),
          SizedBox(height: 120),
          SizedBox(width: 300,
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Dz0201log()));         
            }, 
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                child: Text('ВОЙТИ', style: TextStyle(color: Colors.white, fontSize: 15, height: 3)),
            ),
            
          ),
          SizedBox(height: 30),
          SizedBox(width: 300, 

            child: OutlinedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => dz0202()));         
            }, 
              
            

                child: Text('РЕГИСТАЦИЯ',                 
                style: TextStyle(color: Colors.white, fontSize: 15, height: 3)
                ),
                
                //borderSide: BorderSide(color: const Color.fromARGB(255, 208, 132, 222), width: 1),
                //borderSide: BorderSide(color: Colors.purple, width: 2),
            )),
            
          
                  

            
            

            
            //(onPressed: () {
             // Navigator.push(context, MaterialPageRoute(builder: (context) => dz0202()));
            //},
        


        ],
      ),
      
      ),     

    );
  }
}