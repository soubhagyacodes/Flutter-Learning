import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'First Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
          backgroundColor: Colors.red,
        ),

        body: Container(
          child: Center(
            child: Text('Hello World!'),
          ),
        ),
      ),
      );
  }
}
