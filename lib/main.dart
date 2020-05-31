import 'package:flutter/material.dart';

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

class DiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Image.asset('images/dice1.png'),
            )
          ),
        ],
      ),
    );
  }
}
