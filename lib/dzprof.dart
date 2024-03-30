import 'package:flutter/material.dart';

class _DzprofState extends StatefulWidget {
  const _DzprofState({super.key});

  @override
  State<_DzprofState> createState() => __DzprofStateState();
}

class __DzprofStateState extends State<_DzprofState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(221, 217, 11, 145),
        title: Center(
          child: Text('Профиль', style: TextStyle(color: Colors.white),),
        ),

      ),
      body: Column(
        children: [
          Center(child: Image.asset('assets/ava.png',width: 100,height: 100)),
          SizedBox(height: 10),
          Text('Имя')
        ],
      ),
      
    );
  }
}