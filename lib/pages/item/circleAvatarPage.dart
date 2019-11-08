import 'package:flutter/material.dart';
import 'dart:math';
import '../../widgets/appScaffold.dart';

class CircleAvatarPage extends StatefulWidget {
  static const String routeName = 'CircleAvator';

  @override
  _CircleAvatorPageState createState() => _CircleAvatorPageState();
}

class _CircleAvatorPageState extends State<CircleAvatarPage> {
  final _playersList = [];
  final List<String> players = [
    'Mohamed Salah #11',
    'Sadio Mane #10',
    'Divock Origi #27',
    'Roberto Firmino #9',
    'Rhial Brewster #24',
  ];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: CircleAvatarPage.routeName,
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();
        return _buildRows();
      },
    );
  }

  Widget _buildRows() {
    var random = new Random();
    return Row(
      children: <Widget>[
        CircleAvatar(
          child: Icon(Icons.person),
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            players[random.nextInt(5)],
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Courgette',
              letterSpacing: 1.0,
            ),
          ),
        )
      ],
    );
  }
}
