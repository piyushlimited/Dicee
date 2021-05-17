import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: Text("Dicee"),
        backgroundColor: Colors.red,),
      body: MyApplication(),
    ),
  ),
  );
}

class MyApplication extends StatefulWidget {
  @override
  _MyApplicationState createState() => _MyApplicationState();
}

class _MyApplicationState extends State<MyApplication> {

  int number = 1;
  int number1 = 1;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  number = Random().nextInt(6) + 1;
                });
            },
              child: Image.asset('images/dice$number.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  number1 = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$number1.png'),
            ),
          ),
        ],
      ),
    );
  }
}


