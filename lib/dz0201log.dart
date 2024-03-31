import 'package:dz1012/dz0201.dart';
import 'package:dz1012/reg0601prof.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dz0201log extends StatefulWidget {
  const Dz0201log({super.key});

  @override
  State<Dz0201log> createState() => _Dz0201logState();
}

class _Dz0201logState extends State<Dz0201log> {
// контроллер
  TextEditingController login = TextEditingController();
  TextEditingController password = TextEditingController();

  bool hidePassword = true;
//ключ к форме
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Color.fromARGB(255, 0, 0, 0)]),
              ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: 
        
        Center(
          child: Form(
          
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Image.asset('assets/cocteil.png', width: 150, height: 150),
                  SizedBox(height: 40,),
                  TextFormField(
                    controller: login,
                    decoration: InputDecoration(
                      // заполнение внутри текстового окна цветом
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Имя', 
                      hintText: 'Напишите имя',
                      prefixIcon: Icon(Icons.login_sharp, color: Colors.white,),
                      suffixIcon: IconButton(
                          onPressed: () {
                            login.clear();
                          },
                          icon: Icon(Icons.delete)),
                      border: OutlineInputBorder(
                    
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color.fromARGB(255, 208, 132, 222), width: 1),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == '') {
                        return 'Имя не заполнено';
                      }
                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: login,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Логин', 
                      hintText: 'Напишите логин',
                      prefixIcon: Icon(Icons.login_sharp, color: Colors.white,),
                      suffixIcon: IconButton(
                          onPressed: () {
                            login.clear();
                          },
                          icon: Icon(Icons.delete)),
                      border: OutlineInputBorder(
                    
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color.fromARGB(255, 208, 132, 222), width: 1),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == '') {
                        return 'Логин не заполнено';
                      }
                    },
                  ),                  
                  SizedBox(height: 20,),
                  TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                        border: OutlineInputBorder(
                    
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color.fromARGB(255, 208, 132, 222), width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
          
                            setState(() {
                              if( hidePassword == true) {
                                hidePassword = false;
                              } else {
                                hidePassword = true;
                              }
                            });
          
          
                          },
          
                          
                          icon: Icon(
                            
          
                            hidePassword == true
                                ? Icons.visibility
                                : Icons.visibility_off
          
                                                 
                            )),
                          labelText: 'Пороль', 
                          hintText: 'Придумайте пороль'),
                          
                          
                      keyboardType: TextInputType.text,
                      obscureText: hidePassword,
                      
                      validator: (value) {
                        if (value == '') {
                          return 'Пороль не заполнено';
                        }
                      }),
                  SizedBox(height: 40),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            SharedPreferences sp =
                                await SharedPreferences.getInstance();
                            sp.setString('login', login.text, );
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Reg0601prof(
                                          name: login.text,
                                          familya: '',
                                          email: 'email',
                                          city: '',
                                        )));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 22, 131, 120)),
                        child: Text(
                          'Войти',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dz0201()));
                    },
                    child: Text('назад',
                        style: TextStyle(
                            color: Color.fromARGB(255, 90, 236, 192),
                            decoration: TextDecoration.underline)),
                  ),
                  
                ],
              ),
            ),
          ),
        )));
  }
}
