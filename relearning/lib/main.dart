import 'package:flutter/material.dart';

void main() {
  runApp(MyCardApp());
}

class MyCardApp extends StatelessWidget {
  const MyCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
              height: 100.0,
              width: 200.0,
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(30.0),
              child: Text("This is a card app"),
              color: Colors.grey),
        ),
      ),
    );
  }
}
