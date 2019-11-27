import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey[400],
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[800],
            title: Text('Ask Me Anything'),
          ),
          body: Game(),
        ),
      ),
    );

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  var n = 1;
  void change() {
    setState(() {
      n = Random().nextInt(4) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: change,
        child: Image.asset('images/ball$n.png'),
      ),
    );
  }
}
