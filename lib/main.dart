import 'package:flutter/material.dart';

import 'HomePage.dart';

main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Hopeful Stocks",
      theme: new ThemeData(
        primaryColor: new Color(0xff212F3D), //default color of app
      ),
      home: new HomePage(), //we make the default home  another class called Homepage.dart
      debugShowCheckedModeBanner: false, //disable the debug icon
    );
  }
}

//this is ishaans change lol
//this is change number 2