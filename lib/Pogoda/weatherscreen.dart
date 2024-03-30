import 'package:dz1012/weatherinfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Weatherscreen extends StatefulWidget {
  const Weatherscreen({super.key});

  @override
  State<Weatherscreen> createState() => _WeatherscreenState();
}

class _WeatherscreenState extends State<Weatherscreen> {
  //для передачи названия городо со стро запроса на стр вывода
  TextEditingController cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   title: Center(child: Text('Пргноз погоды')),
      // ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            colors: [Colors.blue, Color.fromARGB(255, 159, 239, 161)],
            ),
        ),
        child: Column(
          children: [
              SizedBox(height: 70),
              Text(
                'Погода',
                style: TextStyle(
                  fontSize: 24, 
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    //виджет - форма заполнения
                    child: TextFormField(
                      //добавляем контроллер
                      controller: cityController,
                      decoration: InputDecoration(
                        //текст подсказка
                        hintText: 'Введите город',
                        hintStyle: TextStyle(fontSize: 24, color: const Color.fromRGBO(255, 255, 255, 1)), 
                      ),
                      
                    ),
                  ),
                  SizedBox(height: 20),
                  //виджет - кнопка
                  ElevatedButton(onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Waetherinfo(city: cityController.text,)));
                  }, 
                  child: Text('Получить погоду')),
                  
        ],
      ),  
         
        
      ),
    );
  }
}