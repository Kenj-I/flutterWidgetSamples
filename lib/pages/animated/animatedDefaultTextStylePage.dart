import 'package:flutter/material.dart';

class AnimatedDefaultTextStylePage extends StatefulWidget {
  static const routeName = 'AnimatedDefaultTextStyle';

  @override
  _AnimatedDefaultTestStylePageState createState() =>
      _AnimatedDefaultTestStylePageState();
}

class _AnimatedDefaultTestStylePageState
    extends State<AnimatedDefaultTextStylePage> {
  var _index = 0;
  TextStyle get _textStyle {
    switch (_index % 4) {
      case 0:
        return Theme.of(context).textTheme.display1.copyWith(color: Colors.red);
      case 1:
        return Theme.of(context)
            .textTheme
            .display2
            .copyWith(color: Colors.green);
      case 2:
        return Theme.of(context)
            .textTheme
            .display3
            .copyWith(color: Colors.blue);
      case 3:
        return Theme.of(context)
            .textTheme
            .display4
            .copyWith(color: Colors.orange);
    }
    assert(false);
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AnimatedDefaultTextStylePage.routeName),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _index++;
          });
        },
        child: const Icon(Icons.refresh),
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 1000),
          child: const Text('Flutter'),
          curve: Curves.easeInOut,
          style: _textStyle,
        ),
      ),
    );
  }
}
