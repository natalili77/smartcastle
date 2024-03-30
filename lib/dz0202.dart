import 'package:flutter/material.dart';

class dz0202 extends StatefulWidget {
  const dz0202({super.key});

  @override
  State<dz0202> createState() => _dz0202State();
}

class _dz0202State extends State<dz0202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Мой профиль', style: TextStyle(color: Colors.white))),
      backgroundColor: Colors.purple),
      body: Center(
        child: Image.asset('assets/cocteil.png', width: 100, height: 100)
        ),
        
      
    );
  }
}