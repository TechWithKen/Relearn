import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const VirtualDice());
}

class VirtualDice extends StatefulWidget {
  const VirtualDice({super.key});

  @override
  State<VirtualDice> createState() => _VirtualDiceState();
}

class _VirtualDiceState extends State<VirtualDice> {
  int diceNumber1 = 1;
  int diceNumber2 = 1;

  void rollDice() {
    setState(() {
      diceNumber1 = Random().nextInt(6) + 1;
      diceNumber2 = Random().nextInt(6) + 1;
      Random().nextInt(6) + 1; // Generate a random number between 1 and 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Virtual Dice App",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Image.asset('images/Dice$diceNumber1.png'),
                    ),
                    Flexible(
                      child: Image.asset('images/Dice$diceNumber2.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: rollDice,
                  child: const Text("Roll Dice"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.deepPurpleAccent, // Background color
                    foregroundColor: Colors.black, // Text color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12), // Padding
                    textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold), // Text style
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Rounded corners
                    ),
                    elevation: 10, // Elevation
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
