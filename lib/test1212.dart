import 'package:flutter/material.dart';

class Test1212 extends StatefulWidget {
  const Test1212({super.key});

  @override
  State<Test1212> createState() => _Test1212State();
}

class _Test1212State extends State<Test1212> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 30, 30),
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          'Сегодня в кино',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              height: 1,
              color: Color.fromARGB(255, 107, 106, 102),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset(
                    'assets/pin1.png',
                    height: 30,
                    width: 30,
                  ),
                  Text(
                    'Город',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Шымкент',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Icon(Icons.arrow_right, color: Colors.white),
                ],
              ),
            ),
            Divider(
              height: 1,
              color: Color.fromARGB(255, 61, 59, 57),
            ),
            SizedBox(height: 20),
           
            Divider(
              height: 1,
              color: Color.fromRGBO(61, 59, 57, 1),),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(children: [
                Image.asset(
                  'assets/date.png',
                  height: 30,
                  width: 30,
                ),
                Text(
                  'Дата',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  '12 декабря, 2023',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Icon(Icons.arrow_right, color: Colors.white),
              ]),
            ),
         
            Divider(
              height: 1,
              color: Color.fromARGB(255, 61, 59, 57),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                
                color: Colors.black,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/im_a.png',
                      height: 160,
                      width: 110,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Одной левой',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'комедия, фильм',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          '7,8',
                          style: TextStyle(
                              color: Color.fromARGB(255, 17, 203, 82),
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Divider(
              height: 1,
              color: Color.fromARGB(255, 61, 59, 57),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                color: Colors.black,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/im_b.png',
                      height: 160,
                      width: 110,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Булки',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'комедия, фильм',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          '7,8',
                          style: TextStyle(
                              color: Color.fromARGB(255, 17, 203, 82),
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Divider(
              height: 1,
              color: Color.fromARGB(255, 61, 59, 57),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/im_a.png',
                    height: 160,
                    width: 110,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Одной левой',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'комедия, фильм',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        '7,8',
                        style: TextStyle(
                            color: Color.fromARGB(255, 17, 203, 82),
                            fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(
              height: 1,
              color: Color.fromARGB(255, 61, 59, 57),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
