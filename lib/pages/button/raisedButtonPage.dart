import 'dart:math';

import 'package:flutter/material.dart';

class RaisedButtonPage extends StatefulWidget {
  static const String routeName = "RaisedButton";

  @override
  _RaisedButtonPageState createState() => _RaisedButtonPageState();
}

class _RaisedButtonPageState extends State<RaisedButtonPage> {
  String _randomInt = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(RaisedButtonPage.routeName),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(
              child: Text('Button'),
              onPressed: () {
                setState(() {
                  _randomInt = generateInt();
                });
              },
            ),
            Text('Random int is $_randomInt'),
          ],
        ),
      ),
    );
  }

  String generateInt() {
    var rand = new Random();
    var int = rand.nextInt(100);
    return int.toString();
  }
}
