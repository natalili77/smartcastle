import 'package:flutter/material.dart';

class Dz2612b extends StatefulWidget {
  const Dz2612b({super.key});

  @override
  State<Dz2612b> createState() => _Dz2612bState();
}

class _Dz2612bState extends State<Dz2612b> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 2, 2, 2),
      appBar: AppBar(
          title: Text('CoctailMix'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 7, 247)),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 47, 6, 46),
              child: Row(
                children: [
                  Image.asset('assets/coct_dc.png', height: 200, width: 200),
                  Text(
                    'Daikiri',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 7, 247),
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Состав',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            Divider(
              height: 1,
              color: Color.fromARGB(255, 107, 106, 102),
            ),
            Container(
              color: Colors.black12,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset('assets/set02.png',
                        height: 160, width: 160),
                  ),
                  Column(
                    children: [
                      Text(
                        'Сыр',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 38, 39, 41)),
                      ),
                      Text('1550тг.'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
