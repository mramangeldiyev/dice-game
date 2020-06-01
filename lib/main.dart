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
    var firstDiceNumber = 1;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //padding: const EdgeInsets.all(5.0),
            child: FlatButton(
              child: Image.asset('images/dice$firstDiceNumber.png'),
              onPressed: () {
                print('object1');
              },
            ),
          ),
          Expanded(
            //padding: const EdgeInsets.all(5.0),
            child: FlatButton(
              child: Image.asset('images/dice2.png'),
              onPressed: () {
                print('object2');
              },
            ),
          ),
        ],
      ),
    );
  }
}
