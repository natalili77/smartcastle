import 'package:dz1012/reg0601.dart';
import 'package:dz1012/reg0601prof.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Reg0701login extends StatefulWidget {
  const Reg0701login({super.key});

  @override
  State<Reg0701login> createState() => _Reg0701loginState();
}

class _Reg0701loginState extends State<Reg0701login> {
// контроллер
  TextEditingController login = TextEditingController();
  TextEditingController password = TextEditingController();

  bool hidePassword = true;
//ключ к форме
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('Логин', style: TextStyle(color: Colors.blue))),
          backgroundColor: Colors.black87,
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                TextFormField(
                  controller: login,
                  decoration: InputDecoration(
                    labelText: 'Логин',
                    hintText: 'Напишите логин',
                    prefixIcon: Icon(Icons.login_sharp),
                    suffixIcon: IconButton(
                        onPressed: () {
                          login.clear();
                        },
                        icon: Icon(Icons.delete)),
                    border: OutlineInputBorder(
                  
                      borderRadius: BorderRadius.circular(40),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
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
                      border: OutlineInputBorder(
                  
                      borderRadius: BorderRadius.circular(40),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(40),
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
                        labelText: 'Пороль', hintText: 'Придумайте пороль'),
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
                          sp.setString('login', login.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Reg0601prof(
                                        name: login.text,
                                        familya: '',
                                        email: 'email',
                                        city: '',
                                      )
                                    )
                                );
                                //модальное окно уведомления
                        } 
                      else{ 
                        showDialog(
                          context: context, 
                          //ограничить действие заукрыть кнопкой
                          barrierDismissible: false,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                              backgroundColor: Colors.blue,
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(height: 100,
                                  child: Column(
                                    children: [
                                      Text('Заполните окно'),
                                      SizedBox(height: 10),
                                      ElevatedButton(onPressed: () {
                                        Navigator.pop(context);
                                        // функция кнопки - 'закрыть'
                                      }, child: Text('Закрыть'))
                                    ],
                                  ),
                                ),
                              ),
                            );

                          });
                        //модальное окно уведомления

                      }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: Text(
                        'Войти',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Reg0601()));
                  },
                  child: Text('Если нет аккаунта зарегистрируйтесь',
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline)),
                ),
              ],
            ),
          ),
        ));
  }
}
