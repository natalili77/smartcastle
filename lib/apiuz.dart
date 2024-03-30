import 'dart:convert';

import 'package:dz1012/apiuzinfo.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class apiuz extends StatefulWidget {
  const apiuz({super.key});

  @override
  State<apiuz> createState() => _apiuzState();
}

class _apiuzState extends State<apiuz> {
  String textFromServer = '';
  int IdFromServer = 0; 
  String userIdServer = '';
//список действие 1
  String name = '';
  String username = '';
  String phone = '';
  String email = '';
  String city = '';
  String street = '';
  String zipcode = '';

// кружок загрузки запрос
  bool ListLoading = false;


  @override
  void initState() {
    super.initState();
    getInfo();

  }


//функция посылания запроса на сервер ГЕТ
  Future getInfo() async {

// кружок загрузки запрос шаг2
        setState(() {
      ListLoading = true;
    });



    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/users/5'));

    print(response.statusCode);
    if (response.statusCode == 200) {
      apiuzinfo Info = apiuzinfo.fromJson(jsonDecode(response.body));
      setState(() {
        //список действие 2
        name = Info.name!;
        username = Info.username!;
        phone = Info.phone!.toString();
        email = Info.email!; 
        city = Info.address!.city!;
        street = Info.address!.street!;
        zipcode = Info.address!.zipcode!; 

      });
// кружок загрузки запрос шаг3
      setState(() {
        ListLoading = false;
      });

      // return apiinfo.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      throw 'ошибка запроса';
    }
  }



  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 143, 18, 177),
      appBar: AppBar(
        title: Center(
            child: Text(textFromServer, style: TextStyle(color: Colors.white))),
        backgroundColor: Color.fromARGB(255, 80, 1, 102),
      ),
      body:
// кружок загрузки запрос шаг4
      ListLoading == true
      ? Center(child: CircularProgressIndicator()) 
      : 
      
      
       SingleChildScrollView(
        
      
        
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
                backgroundImage: ExactAssetImage('assets/cat.png'), radius: 100),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 165, 9, 192),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Имя'),                      
                          Text(
                            //список 1
                            name,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 165, 9, 192),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Фамилия'),
                          Text(
                            username,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 165, 9, 192),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Телефон'),
                    
                    Row(
                      children: [
                        Icon(Icons.arrow_right, color: Colors.white),
                        Text(
                          phone,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 165, 9, 192),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('E-mail'),
                   
                    Row(
                      children: [
                         Icon(Icons.arrow_right, color: Colors.white),
                        Text(
                          email,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 165, 9, 192),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Адрес'),
                    
                    Row(
                      children: [
                        Icon(Icons.arrow_right, color: Colors.white),
                        Text(
                          city,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_right, color: Colors.white),
                        Text(
                          street,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )                    
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 165, 9, 192),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Город'),
                    Text(
                      city,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ), 
            SizedBox(height: 20),
            
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 165, 9, 192),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Улица'),
                    Text(
                      street,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ), 
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 165, 9, 192),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Индекс'),
                    Text(
                      zipcode,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ), 
            SizedBox(height: 20), 

          ],
        ),
      ),
    );
  }
}