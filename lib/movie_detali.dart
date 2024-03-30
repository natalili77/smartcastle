

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MovieDetails extends StatefulWidget {
  String name;
  String image;
  String ganr;
  String data;

  MovieDetails(
    {super.key, 
    required this.name, 
    required this.image, 
    required this.ganr,
    required this.data,
    });

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          
          
          child: Icon(Icons.arrow_back_ios_new,color: Colors.white,)),
        backgroundColor: Colors.black,
        title: Center(
          child: Text('О фильме', style: TextStyle(color: const Color.fromARGB(221, 250, 248, 248)),
          ),
        )
        ),
        body: 
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Center(child: 
              Image.network(
                widget.image, height: 400,),
              ),
              SizedBox(height: 20),
              Text(
                widget.name,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(
                widget.ganr, style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              Text(
                widget.data, style: TextStyle(fontSize: 15),),

            
        
            ],
          ),
        )
        
      


        );
  }
}