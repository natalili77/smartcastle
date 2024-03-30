import 'package:flutter/material.dart';

class Domawka extends StatefulWidget {
  const Domawka({super.key});

  @override
  State<Domawka> createState() => _DomawkaState();
}

class _DomawkaState extends State<Domawka> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        
          title: Text('Информация о фильме'),
        ),
        body: SingleChildScrollView(
          //прокрутка
          
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 200,
                    width: 200,
                    child: Image.network(
                        'https://www.adobe.com/express/feature/image/media_16ad2258cac6171d66942b13b8cd4839f0b6be6f3.png?width=750&format=png&optimize=medium')),
                Image.asset(
                  'assets/pin.png',
                  height: 200,
                  width: 200,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
                Text('Какой то текст'),
                Container(
                  height: 400,
                  width: 200,
                  color: Colors.red,
                )
              ],
            ),
          ),
        );
  }
}