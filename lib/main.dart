import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: EDteamHome(),
    );
  }
}

class EDteamHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
          title: Image.asset(
            'assets/google-logo.jpg',
            height: 50.0,
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(Icons.device_hub),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(Icons.directions_bike),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(Icons.dehaze),
            ),
          ]),
      body: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Text("Continua Estudiando",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
        ),
        Container(
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Container(
                  width: 200.0,
                  height: 150.0,
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Container(
                  width: 200.0,
                  height: 150.0,
                  color: Colors.blue,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Container(
                  width: 200.0,
                  height: 150.0,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
