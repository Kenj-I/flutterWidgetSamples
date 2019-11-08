import 'package:flutter/material.dart';
import '../../widgets/appScaffold.dart';

class ColumnPage extends StatelessWidget {
  static const String routeName = 'Column';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: routeName,
      body: Column(
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(10),
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(10),
            color: Colors.blue,
          ),
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(10),
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
