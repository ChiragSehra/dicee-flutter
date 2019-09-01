import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void changeDiceFace() {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: FlatButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: () {
              //void callback
              setState(() {
                leftDiceNumber = Random().nextInt(6) + 1;
                rightDiceNumber = Random().nextInt(6) + 1;
                print('diceNumber=$leftDiceNumber');
                print('diceNumber=$rightDiceNumber');
              });
            },
          ),
        ),
        Expanded(
          child: FlatButton(
            child: Image.asset('images/dice$rightDiceNumber.png'),
            onPressed: () {
              setState(() {
                rightDiceNumber = Random().nextInt(6) + 1;
                leftDiceNumber = Random().nextInt(6) + 1;
                print('diceNumber=$rightDiceNumber');
                print('diceNumber=$leftDiceNumber');
              });
            },
          ),
        ),
      ]),
    );
  }
}
