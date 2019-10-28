import 'package:flutter/material.dart';
import 'package:hopeful_stocks/pages/StocksPage.dart';
import 'package:hopeful_stocks/pages/PortfolioPage.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePage createState() => new _HomePage ();

}

class _HomePage extends State <HomePage> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = new TabController(vsync: this,initialIndex: 1,length: 2);

  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Hopeful Stock App"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(text:"Stocks"),
            new Tab(text: "Portfolio"),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new StocksPage(),
          new PortfolioPage()

        ],
      ),
    );
  }

}
