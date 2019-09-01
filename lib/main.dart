import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 2;
    var rightDiceNumber = 4;
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: FlatButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: () {
              //void callback
              print("Left button pressed");
            },
          ),
        ),
        Expanded(
          child: FlatButton(
            child: Image.asset('images/dice$rightDiceNumber.png'),
            onPressed: () {
              print("Right button pressed");
            },
          ),
        ),
      ]),
    );
  }
}
