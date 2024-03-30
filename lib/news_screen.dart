import 'dart:convert';
import 'dart:io';

import 'package:dz1012/news_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  //создаем лист
  List<Articles>? newFromServer = [];
  //вызываем гетньюс при запуске

  // кружок загрузки запрос
  bool ListLoading = false;
  // функция обновления ленты, данных - RefreshIndicator
  DateTime currentTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future getNews() async {
    setState(() {
      ListLoading = true;
    });
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?apiKey=d14db04d12c348a6bac286ea1cd84620&language=ru'));
    //статус
    if (response.statusCode == 200) {
      NewsModel newsModel = NewsModel.fromJson(jsonDecode(response.body));
      setState(() {
        newFromServer = newsModel.articles;
      });

      setState(() {
        ListLoading = false;
      });
    } else {
      throw 'ошибка запроса';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 143, 18, 177),
        title: Center(
            child: Text(
          'Новости',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: RefreshIndicator(
        // функция обновления ленты, данных - RefreshIndicator
        onRefresh: () async {
          setState(() {
          currentTime = DateTime.now();
            
          });
          getNews();

        },
        child: ListLoading == true
           // ? Center(child: CircularProgressIndicator()) 
            ? Center(
              
              //загрузка или IOS или Android
              child: Platform.isIOS
                 ? CupertinoActivityIndicator()
                 : CircularProgressIndicator(), )
            : Column(
              children: [
                // функция обновления ленты, данных - RefreshIndicator
                Text('Дата обновления ${DateFormat('HH:mm:ss')
                .format(currentTime)}',
                ),
                //
                Expanded(
                  child: ListView.separated(
                      //загрузка
                          
                      //itemCount: 1,
                      itemCount: newFromServer!.length,
                      //длинна всех новостей
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Text('Заголовок'),
                              //Text('Автор'),
                              //Text('Дата публикации'),
                              Text(
                                newFromServer![index].title!,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                newFromServer![index].author!,
                                style: TextStyle(fontSize: 15, color: Colors.black45),
                              ),
                              Text(
                                newFromServer![index].publishedAt!,
                                style: TextStyle(fontSize: 15, color: Colors.black45),
                              ),
                            ],
                          ),
                        );
                      },
                          
                      separatorBuilder: (context, index) {
                        return Divider(
                          thickness: 2,
                          height: 0,
                        );
                      },
                    ),
                ),
              ],
            ),
      ),
    );
  }
}
