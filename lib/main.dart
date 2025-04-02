import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'First App',
      debugShowCheckedModeBanner: false,
      home: Tata()
      )
    );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Hello"),
            backgroundColor: Colors.blue,
          ),
          body: ListView(
            children: [
              Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
            // verticalDirection: VerticalDirection.up,
            spacing: 10,
            children: [
              const SizedBox(width: 30,),
              
             InkWell(
              child:  Container(
                padding: EdgeInsets.all(70),
                decoration: BoxDecoration(color: Colors.deepOrange,),
                child: Text('Tata Motors'),
              ),
              onTap: () {},
             ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(70),
                  decoration: BoxDecoration(color: Colors.blue,),
                  child: Text('Mahindra'),
                ),
                onTap: () {},
              ),
              Container(
                padding: EdgeInsets.all(70),
                decoration: BoxDecoration(color: Colors.lightGreenAccent),
                child: Text('Container 3 Text'),
              ),
              Container(
                padding: EdgeInsets.all(70),
                decoration: BoxDecoration(color: Colors.lightGreenAccent),
                child: Text('Container 4 Text'),
              ),
              Container(
                padding: EdgeInsets.all(70),
                decoration: BoxDecoration(color: Colors.lightGreenAccent),
                child: Text('Container 5 Text'),
              ),
            ],
          )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: IconButton(
                  tooltip: 'Home',
                  onPressed: () {},
                  icon: Icon(Icons.home),
                )
              ),
              BottomNavigationBarItem(
                label: 'Message',
                icon: IconButton(
                  tooltip: 'Message',
                  onPressed: () {},
                  icon: Icon(Icons.message),
                )
              ),
            ],
          ),
          floatingActionButton: IconButton(
            onPressed:() {}, 
            tooltip:'Back', 
            icon: Icon(Icons.arrow_back)
            ),
          );
  }
}

class Tata extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Tata Motors"),
            backgroundColor: Colors.yellow,
          ),
          
          
          floatingActionButton: IconButton(
            onPressed:() {}, 
            tooltip:'Back', 
            icon: Icon(Icons.arrow_back)
            ),
          );
  }
}
