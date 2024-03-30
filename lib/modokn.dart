import 'package:flutter/material.dart';

class modokn extends StatefulWidget {
  const modokn({super.key});

  @override
  State<modokn> createState() => _modoknState();
}

class _modoknState extends State<modokn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OKNO', style: TextStyle(fontSize: 20))),
    );
  }
}