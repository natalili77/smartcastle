import 'package:flutter/material.dart';

class Dz2612 extends StatefulWidget {
  const Dz2612 ({super.key});

  @override
  State<Dz2612> createState() => _Dz2612State();
}

class _Dz2612State extends State<Dz2612> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(251, 16, 15, 15),
    appBar: AppBar(title: Text('CoctailMix'),
    centerTitle: true,
    backgroundColor: Color.fromARGB(255, 255, 7, 247)
    ),
    body:
     Container(
      color: Colors.black45,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset('assets/coct_dc.png',
            height: 200,
            width: 200),            
          ),
          Column(children: [
            Text('Daikiri',
            style: TextStyle(
              fontSize: 30, 
              color: Color.fromARGB(255, 255, 7, 247))),
               Text('1550тг.',
            style: TextStyle(
              fontSize: 20, 
              color: Color.fromARGB(255, 242, 238, 242))),
          ],),
        ],
      ),
    ),
    );
  }
}