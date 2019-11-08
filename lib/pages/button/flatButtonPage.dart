import 'package:flutter/material.dart';

class FlatButtonPage extends StatefulWidget {
  static const String routeName = "FlatButton";

  @override
  _FlatButtonPageState createState() => _FlatButtonPageState();
}

class _FlatButtonPageState extends State<FlatButtonPage> {
  var _pressCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(FlatButtonPage.routeName),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlatButton(
              child: Text("Button!", style: TextStyle(color: Colors.white)),
              color: Colors.green,
              onPressed: () {
                //setState書いて数値を足さないとリアクティブにならない
                setState(() {
                  _pressCount++;
                });
              },
            ),
            Text('$_pressCount times pressed!'),
          ],
        ),
      ),
    );
  }
}
