

import 'package:dz1012/movie.dart';
import 'package:dz1012/movie_detali.dart';
import 'package:flutter/material.dart';

class test3012 extends StatefulWidget {
  const test3012({super.key});

  @override
  State<test3012> createState() => _test3012State();
}

class _test3012State extends State<test3012> {
  List<Movie> films = [
    Movie('Шрек', 'https://picfiles.alphacoders.com/123/123517.jpg', 'Комедия', 2020),
    Movie('Гарри поттер', 'https://i.pinimg.com/originals/3f/78/6e/3f786e064872aa4ec9f00e4e6f3235a2.jpg', 'Комедия', 2018),
    Movie('Мадагаскар', 'https://static.wikia.nocookie.net/madagascar-fandom/images/8/85/Madagascar-3-Europes-Most-Wanted-Poster-no-biline.jpg/revision/latest?cb=20190425204303', 'Приключения', 2012),
    Movie('Аватар', 'https://papik.pro/grafic/uploads/posts/2023-04/1681383842_papik-pro-p-plakat-avatar-2009-19.jpg', 'Фантастика', 2013),
    Movie('Властелин колец','https://cdnb.artstation.com/p/assets/covers/images/064/548/941/large/daniel-jennings-daniel-jennings-s-l1600-3.jpg?1688167765', 'Фентези', 2012)
    ];



  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:
         Text('Cписок фильмов', style: TextStyle(color: const Color.fromARGB(221, 250, 248, 248)),)),
        backgroundColor: Color.fromARGB(255, 1, 13, 24),
      ),
      body: ListView.builder(
              shrinkWrap: true,
              itemCount: films.length,
              itemBuilder: (BuildContext context, int index){
              return Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>MovieDetails(name: films[index].name, image: films[index].images,ganr: films[index].ganr,data: films[index].data.toString())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Container(
                      color: Color.fromARGB(255, 128, 192, 67),
                      child: Row(
                        children: [
                          Image.network(
                            films [index].images,
                             width: 150,
                             height: 150,
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Text(films[index].name, style: 
                              TextStyle(fontSize: 25, color: Colors.black54),),
                              Text(films[index].ganr),
                              Text(films[index].data.toString()),
                              
                              
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            })
    );
  }
}