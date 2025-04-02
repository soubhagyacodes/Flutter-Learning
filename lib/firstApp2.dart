import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'First App',
    theme: ThemeData.dark(),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Title of the AppBar'),
        backgroundColor: Colors.brown,
        
      ),

      body: Text('HELLO WORLD FROM THE FIRST APP',
        textScaler: TextScaler.linear(2),
        textAlign: TextAlign.center,
        
      ),

    ),


  ));
}