
import 'package:dz1012/api.dart';
import 'package:dz1012/api/CountreeScreen.dart';
import 'package:dz1012/api/ricki_screen.dart';
import 'package:dz1012/apilist.dart';
import 'package:dz1012/apiuz.dart';
import 'package:dz1012/gridview_screen.dart';
import 'package:dz1012/modokn.dart';
import 'package:dz1012/news_screen.dart';
import 'package:dz1012/receptscreen.dart';
import 'package:dz1012/weatherscreen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: CountreeScreen(),
    );
  }
}
