import 'dart:convert';

import 'package:dz1012/weathermodal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//шаг 5 не забыть импорт библиотеки!!!
import 'package:http/http.dart' as http;

class Waetherinfo extends StatefulWidget {

  String city;
  //Waetherinfo({super.key});
  Waetherinfo({super.key, required this.city});

  @override
  State<Waetherinfo> createState() => _WaetherinfoState();
}

class _WaetherinfoState extends State<Waetherinfo> {
  // шаг 7 создаем переменные
  double temp = 0.0;
  String state = '';
  //14
  String image = '';


  // шаг 9
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getWeahter();
  }



  Future getWeahter() async {
    final response = await http.get(Uri.parse(
      //'https://api.openweathermap.org/data/2.5/weather?q=Paris&appid=1369dd6b5ae78fc9952261ab9aa236b4&units=metric'));
      'https://api.openweathermap.org/data/2.5/weather?q=${widget.city}&appid=1369dd6b5ae78fc9952261ab9aa236b4&units=metric'));
    //шаг 6 - подтверждаем статус
    if (response.statusCode == 200) {
      Weathermodal weathermodal = 
         Weathermodal.fromJson(jsonDecode(response.body));

         //шаг 8
         setState(() {
           temp = weathermodal.main!.temp!;
           state = weathermodal.weather!.first.main!;
           //шаг 15 смена фона на погоду
           if (state == 'Snow') {
            image = 'assets/snow.jpg';
           } else if (state == 'Clouds') {
            image = 'assets/cloud.jpg';
           } else if (state == 'Rainy') {
            image = 'assets/rainy.jpg';
           }

         });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.blue,
       title: Center(child: Text('Информация о погоде')),

    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text( widget.city,
          style: TextStyle(fontSize: 30),
          ),
          // 10 $ - работа внутри кавычек
          Text('$temp°C',
          style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),         
          ),   
          Text(
            //'Солнечно',
            // 11
            state,

          style: TextStyle(fontSize: 20),
          ),       
        ],
      ),
    ),
    );
   
  }
}