import 'package:flutter/material.dart';

class AnimatedPhysicalModelPage extends StatefulWidget {
  static const routeName = 'AnimatedPhysicalModel';

  @override
  _AnimatedPhysicalModelPageState createState() =>
      _AnimatedPhysicalModelPageState();
}

class _AnimatedPhysicalModelPageState extends State<AnimatedPhysicalModelPage> {
  var _hasElevation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AnimatedPhysicalModelPage.routeName),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _hasElevation = !_hasElevation;
          });
        },
        child: Icon(Icons.refresh),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: AnimatedPhysicalModel(
            color: Colors.purple,
            shadowColor: Colors.black,
            shape: BoxShape.rectangle,
            duration: const Duration(milliseconds: 1000),
            elevation: _hasElevation ? 16 : 0,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset('assets/images/dog.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
