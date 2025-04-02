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
          title: Text("Hello"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
          // constraints: BoxConstraints.expand(),
          // margin: EdgeInsets.all(20),
          // color: Colors.amber,
          transform: Matrix4.rotationZ(0.15),
          padding: EdgeInsets.all(70),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 3, color: Colors.deepOrangeAccent)
          ),
          child: Text('Container 1'),
        ),
        )
      ),
    );
  }
}
 