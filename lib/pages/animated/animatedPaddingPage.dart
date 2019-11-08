import 'package:flutter/material.dart';

class AnimatedPaddingPage extends StatefulWidget {
  static const routeName = 'AnimatedPadding';

  @override
  _AnimatedPaddingPageState createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {
  var _hasPadding = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AnimatedPaddingPage.routeName),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _hasPadding = !_hasPadding;
          });
        },
        child: const Icon(Icons.refresh),
      ),
      body: Center(
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 1000),
          padding: EdgeInsets.all(_hasPadding ? 64 : 0),
          child: Image.asset('assets/images/dog.jpg'),
        ),
      ),
    );
  }
}
