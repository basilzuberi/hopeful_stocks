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
        primaryColor: new Color(0xff212F3D),
      ),
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
