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
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.white,
                    child: Center(child: Text("White Colour")),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.red,
                    child: Center(child: Text("Red Color")),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.yellow,
                    child: Center(child: Text("Yellow Color")),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.white,
                    child: Center(child: Text("White Colour")),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.red,
                    child: Center(child: Text("Red Color")),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.yellow,
                    child: Center(child: Text("Yellow Color")),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
