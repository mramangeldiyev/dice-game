import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Dice Game'),
          backgroundColor: Colors.green,
        ),
        body: DiceScreen(),
      ),
    )
  );
}
class DiceScreen extends StatefulWidget {
  @override
  _DiceScreenState createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int firstDiceNumber = 1;
  int secondDiceNumber = 1;
  @override
  Widget build(BuildContext context) { 
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //padding: const EdgeInsets.all(5.0),
            child: FlatButton(
              child: Image.asset('images/dice$firstDiceNumber.png'),
              onPressed: () {
                setState(() {
                  firstDiceNumber = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
          Expanded(
            //padding: const EdgeInsets.all(5.0),
            child: FlatButton(
              child: Image.asset('images/dice$secondDiceNumber.png'),
              onPressed: () {
                setState(() {
                  secondDiceNumber = Random().nextInt(6) + 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
