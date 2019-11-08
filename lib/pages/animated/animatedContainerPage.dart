import 'package:flutter/material.dart';

import '../../widgets/animationObject.dart';

class AnimatedContainerPage extends StatefulWidget {
  static const routeName = 'AnimatedContainer';

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  static const _alignments = [
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomRight,
    Alignment.bottomLeft,
  ];

  static const _colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  var _index = 0;
  AlignmentGeometry get _alignment => _alignments[_index % _alignments.length];
  Color get _color => _colors[_index % _colors.length];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AnimatedContainerPage.routeName),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _index++;
          });
        },
        child: const Icon(Icons.refresh),
      ),
      body: Container(
        child: AnimatedContainer(
            alignment: _alignment,
            color: _color,
            margin: EdgeInsets.all(20 * ((3 - _index).toDouble() % 4)),
            padding: EdgeInsets.all(20 * (_index.toDouble() % 4)),
            duration: const Duration(milliseconds: 1000),
            child: AnimationObject(),
            curve: Curves.bounceOut),
      ),
    );
  }
}
