import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'First App',
      debugShowCheckedModeBanner: false,
      home: MyApp()
      )
    );
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                accountName: Text("Soubhagya Mishra"),
                accountEmail: Text("soubhagya@gmail.com"),
                currentAccountPicture: ClipOval(
                  child: Image.asset('assets/user.png'),
                  ),
                ),

                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home', ),
                  selectedColor: Colors.blue,
            
                  onTap: (){},
                ),

                ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Messages'),
                  onTap: (){},
                ),
              ],
            ),
          ),
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
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(color: Colors.yellow,),
                child: Text('Tata Motors', textScaleFactor: 1.5,),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Tata()));
              },
             ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(color: Colors.green,),
                  child: Text('Bajaj Autos', textScaleFactor: 1.5),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BajajAuto()));
                },
              ),
              InkWell(
                child: Container(
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(color: Colors.indigoAccent),
                child: Text('Ashok Leyland', textScaleFactor: 1.5),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AshokLeyland()));
              },
              ),
              InkWell(
                child: Container(
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(color: Colors.red),
                child: Text('Mahindra', textScaleFactor: 1.5),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mahindra()));
              },
              ),
              InkWell(
                child: Container(
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(color: Colors.cyan),
                child: Text('Kia', textScaleFactor: 1.5),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Kia()));
              },
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
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                  },
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
          body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                "Tata Motors",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Car(
                    'assets/Nexon.jpg',
                    'Tata Nexon',
                    '₹ 25,00,000',
                    '1890 cc | 304 kg',
                  ),
                ),
                Expanded(
                  child: Car(
                    'assets/Harrier.jpg',
                    'Tata Harrier',
                    '₹ 15,00,000',
                    '1200 cc | 200 kg',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: IconButton(
                  tooltip: 'Home',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                  },
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
            onPressed:() {
              Navigator.pop(context);
            }, 
            tooltip:'Back', 
            icon: Icon(Icons.arrow_back)
            ),
          );
  }
}

class BajajAuto extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Bajaj Autos"),
            backgroundColor: Colors.greenAccent,
          ),
        body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                "Bajaj Autos",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Car(
                    'assets/Pulsar.jpg',
                    'Bajaj Pulsar 150',
                    '₹ 25,00,000',
                    '1890 cc | 304 kg',
                  ),
                ),
                Expanded(
                  child: Car(
                    'assets/RE.jpg',
                    'Bajaj RE',
                    '₹ 15,00,000',
                    '1200 cc | 200 kg',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: IconButton(
                  tooltip: 'Home',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                  },
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
            onPressed:() {
              Navigator.pop(context);
            }, 
            tooltip:'Back', 
            icon: Icon(Icons.arrow_back)
            ),
          );
  }
}

class AshokLeyland extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Ashok Leyland"),
            backgroundColor: Colors.indigo,
          ),
          body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                "Ashok Leyland",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Car(
                    'assets/Dost.jpg',
                    'Ashok Leyland Dost',
                    '₹ 25,00,000',
                    '1890 cc | 304 kg',
                  ),
                ),
                Expanded(
                  child: Car(
                    'assets/3520.jpg',
                    'Ashok Leyland 3520',
                    '₹ 15,00,000',
                    '1200 cc | 200 kg',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: IconButton(
                  tooltip: 'Home',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                  },
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
            onPressed:() {
              Navigator.pop(context);
            }, 
            tooltip:'Back', 
            icon: Icon(Icons.arrow_back)
            ),
          );
  }
}

class Mahindra extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Mahindra"),
            backgroundColor: Colors.red,
          ),
body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                "Mahindra",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Car(
                    'assets/Thar.jpg',
                    'Mahindra Thar',
                    '₹ 25,00,000',
                    '1890 cc | 304 kg',
                  ),
                ),
                Expanded(
                  child: Car(
                    'assets/Scorpio.jpg',
                    'Mahindra Scorpio-N',
                    '₹ 15,00,000',
                    '1200 cc | 200 kg',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: IconButton(
                  tooltip: 'Home',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                  },
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
            onPressed:() {
              Navigator.pop(context);
            }, 
            tooltip:'Back', 
            icon: Icon(Icons.arrow_back)
            ),
          );
  }
}

class Kia extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Kia"),
            backgroundColor: Colors.deepOrangeAccent,
          ),
body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                "Kia",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Car(
                    'assets/Seltos.jpg',
                    'Kia Seltos',
                    '₹ 25,00,000',
                    '1890 cc | 304 kg',
                  ),
                ),
                Expanded(
                  child: Car(
                    'assets/Sonet.jpg',
                    'Kia Sonet',
                    '₹ 15,00,000',
                    '1200 cc | 200 kg',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: IconButton(
                  tooltip: 'Home',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                  },
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
            onPressed:() {
              Navigator.pop(context);
            }, 
            tooltip:'Back', 
            icon: Icon(Icons.arrow_back)
            ),
          );
  }
}

Widget  Car(String imagePath, String carName, String price, String features) {
return Card(
  elevation: 3,
  margin: EdgeInsets.all(12),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 10),
      Center(
        child: Image.asset(
          imagePath,
          width: 300,
          height: 200,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(carName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text("Price: $price", style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text(features, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    ],
  ),
);
}