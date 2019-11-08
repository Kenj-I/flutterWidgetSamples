import 'package:flutter/material.dart';
import '../../widgets/appScaffold.dart';

class AlignPage extends StatelessWidget {
  static const String routeName = "Align";

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: routeName,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: boxContainer('Top right'),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: boxContainer('Top left'),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: boxContainer('Bottom right'),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: boxContainer('Bottom left'),
          ),
        ],
      ),
    );
  }

  Widget boxContainer(text) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.yellow,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
