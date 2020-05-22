import 'package:flutter/material.dart';
import 'dart:math';

//Project created by vaibhav date 22/05/2020

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[300],
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text('Roller Dice'),
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  // Dart Variables
  int topDice = 1; //Dart variable for top dise image change
  int bottomDise = 2; //Dart variable for bottom dise image change
  //Dart Variables

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        child: FlatButton(
          onPressed: () {
            setState(() {
              topDice = Random().nextInt(6) + 1; //1-6 dosent consider
              print('Top Button Pressed');
            });
          },
          child: Image.asset('images/dice$topDice.png'),
          padding: const EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 10.0),
        ),
      ),
      Expanded(
        child: FlatButton(
          onPressed: () {
            setState(() {
              bottomDise = Random().nextInt(6) + 1; //1-6 dosent consider
              print('Bottom Buttom Pressed');
            });
          },
          child: Image.asset('images/dice$bottomDise.png'),
          padding: const EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 10.0),
        ),
      ),
    ]);
  }
}
