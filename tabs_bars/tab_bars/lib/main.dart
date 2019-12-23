import 'package:flutter/material.dart';
import './hal_headset.dart' as headset;
import './hal_radio.dart' as rasio;
import './hal_komputer.dart' as komputer;
import './hal_smartphone.dart' as hp;

void main() {
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget{
  @override
    _HomeState createState()=>new _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  TabController controller;
 @override 
  void initState(){
    controller=new TabController(vsync: this,length: 4);
    super.initState();
  }

 @override 
  void dispose(){
    controller.dispose();
    super.dispose();
  }

 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Daftar Elektronik"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer),),
            new Tab(icon: new Icon(Icons.headset),),
            new Tab(icon: new Icon(Icons.radio),),
            new Tab(icon: new Icon(Icons.smartphone),),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new komputer.Komputer(),
          new headset.Headset(),
          new rasio.Radio(),
          new hp.Smartphone(),
        ],
      ),
    );
  }
}