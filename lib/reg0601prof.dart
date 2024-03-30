
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Reg0601prof extends StatefulWidget {
  String name;
  String familya;
  String email;
  String city;

  Reg0601prof({super.key,
  required this.name,
  required this.familya,
  required this.email,
  required this.city,
  
  });

  @override
  State<Reg0601prof> createState() => _Reg0601profState();
}

class _Reg0601profState extends State<Reg0601prof> {

  String? login = '';

  @override
  void initState() {
    super.initState();

    getFromShared();
  }

  Future getFromShared() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    
    setState(() {
      login = sp.getString('login');
    });
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Профиль', style: TextStyle(color: Colors.blue))),
        backgroundColor: Colors.black87,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Center(child: Image.asset('assets/ava.png', width: 150, height: 150)), 
          SizedBox(height: 10),
          Text(
           // login!,
           widget.name,
          style: TextStyle(fontSize: 40)),
          Text(
            widget.familya,
          style: TextStyle(fontSize: 40)),
          Text(
            widget.email
          ),
          Container(
            height: 40,
            color: Colors.amber,
            child: Text('Дата рождения')),

          Text(
            widget.city
          ),

          SizedBox(height: 10),
          SizedBox(
            width: 300,
            child: ElevatedButton(onPressed: () {
             Navigator.pop(context);
             //show
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text('Выйти'),
            ),
           
          ),
          SizedBox(
            width: 300,
          
            child: ElevatedButton(onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.amber,
                duration: Duration(seconds: 5),
                content: Row(
                  children: [
                    Icon(Icons.access_alarm_outlined),
                  
                    SizedBox(width: 5.0),
                    Expanded(
                      child: Text('Приветствуем вас на нашем сервисе, доставки еды!',
                      style: TextStyle(color: Colors.black, fontSize: 15),),
                    ),
                    
                  ],
                )));

            }, child: Text('Show snackbar'))),

          ]
          
         
          )
      
    );
  }
}