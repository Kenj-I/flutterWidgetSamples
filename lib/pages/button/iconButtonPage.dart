import 'package:flutter/material.dart';

class IconButtonPage extends StatefulWidget {
  static const String routeName = "IconButton";

  @override
  _IconButtonPageState createState() => _IconButtonPageState();
}

class _IconButtonPageState extends State<IconButtonPage> {
  var _pressCount = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> generateItems() {
      var _messages = <Widget>[];
      for (var i = 1; i < _pressCount; i++) {
        if (i % 2 == 0) {
          _messages.add(ListTile(
            title: Text('$i is Even'),
          ));
        } else {
          _messages.add(ListTile(
            title: Text('$i is Odd'),
          ));
        }
      }
      return _messages;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(IconButtonPage.routeName),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.add_circle),
              onPressed: () {
                setState(() {
                  _pressCount++;
                });
              },
            ),
            Expanded(
                child: ListView(
              children: generateItems(),
            ))
          ],
        ),
      ),
    );
  }
}
