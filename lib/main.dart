import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(SlotMachine());
}

class SlotMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slot Machine',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Slot Machine"),
          backgroundColor: Colors.pink,
        ),
        backgroundColor: Colors.black,
        body: Slot(),
      ),
    );
  } //MaterialApp
}

class Slot extends StatelessWidget {
  var slotNumber1 = Random().nextInt(11) + 1;
  var slotNumber2 = Random().nextInt(11) + 1;
  var slotNumber3 = Random().nextInt(11) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
            onPressed: () {
              print("number: $slotNumber1");
            },
            child: Image.asset("images/$slotNumber1.png"),
          )),
          Expanded(
              child: FlatButton(
            onPressed: () {
              print("number: $slotNumber2");
            },
            child: Image.asset("images/$slotNumber2.png"),
          )),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print("number: $slotNumber3");
              },
              child: Image.asset("images/$slotNumber3.png"),
            ),
          )
        ],
      ),
    );
  }
}
