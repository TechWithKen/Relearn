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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(children: [
            Container(width: 100.0, color: Colors.red),
            SizedBox(
              width: 30.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(width: 100.0, height: 100.0, color: Colors.yellow),
                Container(width: 100.0, height: 100.0, color: Colors.green),
              ],
            ),
            SizedBox(
              width: 30.0,
            ),
            Container(width: 100.0, color: Colors.blue),
          ]),
        ),
      ),
    );
  }
}
