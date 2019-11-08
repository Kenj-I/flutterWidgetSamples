import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  static const routeName = 'AnimatedOpacity';

  @override
  _AnimatedOpacityPageState createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  var _opaque = true;

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AnimatedOpacityPage.routeName),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _opaque = !_opaque;
          });
        },
        child: const Icon(Icons.refresh),
      ),
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 1000),
          opacity: _opaque ? 1 : 0.3,
          child: Image.asset('assets/images/dog.jpg'),
        ),
      ),
    );
  }
}
