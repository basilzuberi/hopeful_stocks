import 'package:flutter/material.dart';
import 'package:hopeful_stocks/models/StocksModel.dart';

class StocksPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: InputDecoration(hintText: "Enter Stock Symbol [Ex. AMZN]"),
            )
          ],
        ),
      ),
    );

  }

}
