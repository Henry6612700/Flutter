import 'package:flutter/material.dart';
import 'package:sidebar/detail.dart';

void main(){
  runApp(new MaterialApp(
    title: "Sidebar",
    home: new Home(),
    debugShowCheckedModeBanner: false,
    ));
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => new _HomeState();
}



class _HomeState extends State<Home>{
  String gambar1="http://idrcorner.com/images/icon/gw.jpg";
  String gambar2="https://upload.wikimedia.org/wikipedia/commons/2/2d/Sleeping_Beauty_Castle_2019.jpg";
  String backup;

  String nama1="Henry";
  String nama2="Alfi";
  String backupnama;

  String email="henryciang451@gmail.com";
  String email2="alfidharmawan@gmail.com";
  String backupemail;

  void gantiuser(){
    this.setState((){
      backup=gambar1;
      gambar1=gambar2;
      gambar2=backup;

      backupnama=nama1;
      nama1=nama2;
      nama2=backupnama;

      backupemail=email;
      email=email2;
      email2=backupemail;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: new Text("Demo Sidebar (Drawer)"),backgroundColor: Colors.red[700],),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(nama1),
              accountEmail: new Text(email),
              currentAccountPicture: 
              new GestureDetector(
                  onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context)=>new Detail(nama: nama1,gambar: gambar1,))),
                  child: new CircleAvatar(
                  backgroundImage: new NetworkImage(gambar1),
                ),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(image: new NetworkImage("http://ichef.bbci.co.uk/images/ic/1600xn/p03gywjs.jpg"),
                fit: BoxFit.cover
                )                
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: ()=>gantiuser(),
                  child:new CircleAvatar(backgroundImage: new NetworkImage(gambar2),)
                )  
              ],
            ),
            new ListTile(
              title: new Text("Setting"),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
            ),
          ],
        ),
      ),
      
      body: new Container(

      ),
    );
  }
}