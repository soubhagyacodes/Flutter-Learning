import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "App Hai Ji",
          ),
          backgroundColor: Colors.deepPurpleAccent,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.message),
              tooltip: "Message",
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
              color: Colors.white,
              tooltip: "Settings",
            ),
          ],
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amberAccent,
                  padding: EdgeInsets.all(50),
                  child: Text("Container 1"),
                ),
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(50),
                  child: Text("Container 1"),
                ),
                Container(
                  color: Colors.cyan,
                  padding: EdgeInsets.all(50),
                  child: Text("Container 1"),
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  padding: EdgeInsets.all(50),
                  child: Text("Container 1"),
                ),
                Container(
                  color: Colors.indigoAccent,
                  padding: EdgeInsets.all(50),
                  child: Text("Container 1"),
                ),
                Container(
                  color: Colors.redAccent,
                  padding: EdgeInsets.all(50),
                  child: Text("Container 1"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 