
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared extends StatefulWidget {
  const Shared({super.key});

  @override
  State<Shared> createState() => _SharedState();
}

class _SharedState extends State<Shared> {
 TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Shared Preferences',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextField(
            controller: textEditingController,
            decoration: InputDecoration(labelText: 'Text'),
            style: TextStyle(fontSize: 24, color: const Color.fromARGB(255, 42, 39, 39)),
        
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.setString('keyText',textEditingController.text);

              String? newText;
              newText = sp.getString('keyText');

              print(newText);
            
          },
          child: Text('Сохранить')),
        ]),
      ),
    );
  }
}