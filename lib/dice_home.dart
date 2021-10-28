import 'dart:math';
import 'package:flutter/material.dart';

class DiceHome extends StatefulWidget {
  const DiceHome({Key? key}) : super(key: key);

  @override
  _DiceHomeState createState() => _DiceHomeState();
}

class _DiceHomeState extends State<DiceHome> {

  int leftDiceNumber = 1;
  int rightDiceNUmber = 1;

  void diceChange(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNUmber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Dice Luck',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                diceChange();
              },
            ),
            TextButton(
              child: Image.asset('images/dice$rightDiceNUmber.png'),
              onPressed: () {
                diceChange();
              },
            ),
          ],
        ),
      ),
    );
  }
}
