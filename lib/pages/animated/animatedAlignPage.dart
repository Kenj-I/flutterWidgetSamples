import 'package:flutter/material.dart';

class AnimatedAlignPage extends StatefulWidget {
  static const routeName = 'AnimatedAlign';

  @override
  _AnimatedAlignPageState createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  static const _alignments = [
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomRight,
    Alignment.bottomLeft,
  ];

  var _index = 0;
  AlignmentGeometry get _alignment => _alignments[_index % _alignments.length];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AnimatedAlignPage.routeName),
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
        child: AnimatedAlign(
          alignment: _alignment,
          duration: const Duration(milliseconds: 1000),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          curve: Curves.easeInOut,
        ),
      ),
    );
  }
}
