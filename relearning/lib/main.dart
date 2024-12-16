import 'package:flutter/material.dart';

void main() {
  runApp(const MyCardApp());
}

class MyCardApp extends StatelessWidget {
  const MyCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[900],
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/Kehinde.jpg'),
              ),
              Text(
                  style: TextStyle(
                    fontFamily: "Pacifico",
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                  "Kehinde Ajasa"),
              Text(
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                  ),
                  "Machine Learning Engineer"),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                color: Colors.white,
                child: ListTile(
                  leading:
                      Icon(Icons.phone, size: 20.0, color: Colors.brown[800]),
                  title: Text(
                    "+234 909 134 0015",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                color: Colors.white,
                child: ListTile(
                  leading:
                      Icon(Icons.email, size: 20.0, color: Colors.brown[800]),
                  title: Text(
                    "kehindetimi.ajasa@gmail.com",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
