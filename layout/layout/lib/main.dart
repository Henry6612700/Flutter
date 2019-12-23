import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "Henry",
    home: new HalamaSatu(),
  ));
}

class HalamaSatu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: new AppBar(
        backgroundColor: Colors.red[800],
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text("My First Project"),
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Icon(
              Icons.local_pizza,
              size:70.0,
              color: Colors.red,
            ),
            new Row(
              children: <Widget>[
                new Icon(Icons.donut_large,size:70.0,color:Colors.red,),
                new Icon(Icons.local_airport,size:70.0,color:Colors.red,),
                new Icon(Icons.add_to_queue,size:70.0,color:Colors.red,),
              ],
            ),
            new Icon(Icons.add_a_photo,size:70.0,color:Colors.blueAccent)
          ],
        )
        )
      ),
    );
  }
}