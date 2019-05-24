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
          'assets/cinepolis-logo.png',
          height: 35.0,
        ),
        // actions: <Widget>[
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 20.0),
        //     child: Icon(Icons.device_hub),
        //   ),
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 20.0),
        //     child: Icon(Icons.directions_bike),
        //   ),
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 20.0),
        //     child: Icon(Icons.search),
        //   ),
        //   Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 20.0),
        //     child: Icon(Icons.dehaze),
        //   ),
        // ]
      ),
      body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text("Cartelera",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w600)),
            ),
            Container(
              height: 150.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, position) {
                  return Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Container(
                      width: 100.0,
                      height: 150.0,
                      child: Image.network(
                          'https://movieprodportalstoweb.blob.core.windows.net/movieposters/Capitana_Marvel.jpg'),
                    ),
                  );
                },
              ),
            ),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: <Widget>[
                    TabBar(
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.red,
                      tabs: [
                        Tab(text: "Estrenos"),
                        Tab(text: "Novedades"),
                        Tab(text: "Recomendado"),
                      ],
                    ),
                    Expanded(
                        child: TabBarView(children: [
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (context, postiion) {
                          return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                width: 200.0,
                                height: 150.0,
                                // color: Colors.blue,
                                child: Image.network(
                                    'https://movieprodportalstoweb.blob.core.windows.net/movieposters/Capitana_Marvel.jpg'),
                              ));
                        },
                      ),
                      Container(color: Colors.yellow),
                      Container(color: Colors.blue),
                    ]))
                  ],
                ),
              ),
            )
          ]),
    );
  }
}
