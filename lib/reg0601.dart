import 'package:dz1012/reg0601prof.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Reg0601 extends StatefulWidget {
  const Reg0601({super.key});

  @override
  State<Reg0601> createState() => _Reg0601State();
}

class _Reg0601State extends State<Reg0601> {
// контроллер
  TextEditingController name = TextEditingController();
  TextEditingController familya = TextEditingController();
  TextEditingController email = TextEditingController();
//ключ к форме
  final _formKey = GlobalKey<FormState>();
//переменные: города
  List<String> cities = ['Шымкент', 'Алматы', 'Астана', 'Актау', 'Тараз'];
  String selectedCity = 'Шымкент';

//переменная: даты
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Регистрация',
          style: TextStyle(color: Colors.blue),
        )),
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(children: [
            TextFormField(
              controller: name,
              decoration:
                  InputDecoration(labelText: 'Имя', hintText: 'Напишите имя'),
              //hintText - исчезающий текст
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == '') {
                  return 'Имя не заполнено';
                    
                  
                }
                return null;
              },
            ),
            TextFormField(
              controller: familya,
              decoration: InputDecoration(
                  labelText: 'Фамилия', hintText: 'Напишите фамилию'),
              keyboardType: TextInputType.text,
              validator: (value) {if (value == '') {
                  return 'Фамилия не заполнено';
                    
                  
                }
                return null;
              },
            ),
            //выбор даты - функция клика
          InkWell(
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context, 
                initialDate: DateTime.now(),
                firstDate: DateTime(1950), 
                lastDate: DateTime(2030));

                if (pickedDate != null) {
                  setState(() {
                    selectedDate = pickedDate;
                  });
                }



              },
              child: Container(
                height: 40,
                width: 300,
                color: Colors.amber,
                child: Center(child: Text(
                  DateFormat('dd.MM.yyyy').format(selectedDate)))),
                //child: Center(child: Text('DATA'))),
            ),

            DropdownButtonFormField(items: cities.map((city) => DropdownMenuItem(
              value: city,
              child: Text(city),))
              .toList(),
              value: selectedCity,
              onChanged: (newCity) {
                selectedCity = newCity!;
              }),


            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Номер телефона',
                  hintText: 'Напишите номер телефона'),
              keyboardType: TextInputType.phone,
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                  labelText: 'E-mail', hintText: 'Напишите почту'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
                // decoration: InputDecoration(labelText: 'Пороль', hintText: 'Ваш пороль'),
                // keyboardType: InputDecoration(),
                ),
            SizedBox(height: 40),
            ElevatedButton(               
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // функционал
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Reg0601prof(
                                  name: name.text,
                                  familya: familya.text,
                                  email: email.text,
                                  city: selectedCity,
                                )));
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text('Зарегистрироваться',
                    style: TextStyle(color: Colors.black87))),
          ]),
        ),
      ),
    );
  }
}
