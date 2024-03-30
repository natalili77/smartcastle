import 'package:dz1012/test2312b.dart';
import 'package:flutter/material.dart';

class Test2312 extends StatefulWidget {
  const Test2312({super.key});

  @override
  State<Test2312> createState() => _Test2312State();
}

class _Test2312State extends State<Test2312> {
  List<String> products = ['Мясо', 'Молоко', 'Сыр', 'Колбаса'];

  @override
  Widget build(BuildContext context) {
    var row = Row(
      children: [
        Image.asset('assets/set01.png', height: 160, width: 160),
        Column(
          children: [
            Text(
              'Колбаса',
              style: TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 38, 39, 41)),
            ),
            Text('2200тг.')
          ],
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Продукты'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 18, 225, 81),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Test2312b()));
              },
              child: Container(
                color: Colors.black12,
                child: Row(
                  children: [
                    Image.asset('assets/set03.png', height: 160, width: 160),
                    Column(
                      children: [
                        Text(
                          products[0],
                          style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 38, 39, 41)),
                        ),
                        Text('2500тг.'),
                      ],
                    ),
                  ],
                ),
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 5.0),
                    child: Image.asset('assets/set04.png',
                        height: 160, width: 160),
                  ),
                  Column(
                    children: [
                      Text(
                        'Молоко',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 38, 39, 41)),
                      ),
                      Text('550тг.'),
                    ],
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
            Divider(
              height: 1,
              color: Color.fromARGB(255, 107, 106, 102),
            ),
            row,
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Test2312b()));
                    },
                    child: Text(
                      'Далее',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 18, 225, 81),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
