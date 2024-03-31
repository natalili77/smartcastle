import 'dart:convert';

import 'package:dz1012/api/country_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class CountreeScreen extends StatefulWidget {
 


  @override
  State<CountreeScreen> createState() => _CountreeScreenState();

  
}
//метод преобразования запомнить!!!
class _CountreeScreenState extends State<CountreeScreen> {
   List<CountryModel> countries = [];

   void initState() {


    super.initState();
    getCountries();
  }

  Future getCountries() async{
    final response = 
    await http.get(Uri.parse('https://restcountries.com/v3.1/all'));
    if (response.statusCode == 200) {
      List<CountryModel> countriesList = List.from(jsonDecode(response.body))
      .map((map) => Map <String, dynamic>. from(map))
      .map((Map<String, dynamic> map) => CountryModel.fromJson(map))
      .toList();
    
    setState(() {
      countries = countriesList;
      countries.sort(((a, b) => a.name!.common!.compareTo(b.name!.common!)));
    });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Список всех стран',),
      backgroundColor: Color.fromARGB(255, 125, 10, 208),),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index){
          //return Text(countries[index].name!.common!);
          // ExpansionTile - виджет 
          return ExpansionTile(
            //leading - иконка
            leading: CircleAvatar(
              
              
              backgroundImage:NetworkImage(countries[index].flags!.png!, )),
            title: Text(countries[index].name!.common!),
            //инффо во всплывающее окно
            children: [
              Row(
                children: [
                  Text('Столица страны: ', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(countries[index].capital!.first),
                ],
              ),
              Row(
                children: [
                  Text('Peoples/Население: ', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(countries[index].population!.toString()),
                ],
              ),
              Row(
                children: [
                  Text('Площадь (кв.км): ', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(countries[index].area!.toString()),
                  // Text(countries[index].languages!.ell!),
                ],
              ),
              Row(
                children: [
                  Text('Часовой пояс: ', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(countries[index].timezones!.toString()),
                ],
              ),
              
             ],);
        }),

    
    );
  }
}