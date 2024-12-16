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
        body: const SafeArea(
            child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/Kehinde.jpg'),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
