import 'package:flutter/material.dart';
import 'package:hopeful_stocks/models/StocksModel.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class StocksPage extends StatefulWidget{
  @override
  _StocksPageState createState() => _StocksPageState();
}

class _StocksPageState extends State<StocksPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: InputDecoration(hintText: "Enter Stock Symbol [Ex. AMZN]"),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: thisStock("MSFT"),
            ),
          ],
        ),
      ),
    );
  }
  var data = [187.2300,185.3500,183.7100,184.7100,184.4400,188.7000,183.8900];
  Material thisStock(String title){
      return Material(
        color: Color(0xff212F3D),
        elevation: 14.0,
        borderRadius: BorderRadius.circular(24.0),
        shadowColor: Color(0x802196F3),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child:Text(title,style:TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),),
                    ),

                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: new Sparkline(
                        data: data,
                        lineColor: Color(0xffff6101),
                        pointsMode: PointsMode.all,
                        pointColor: Colors.white,
                        pointSize: 8.0,
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      );
    }
}
