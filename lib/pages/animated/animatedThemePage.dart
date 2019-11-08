import 'package:flutter/material.dart';

class AnimatedThemePage extends StatefulWidget {
  static const routeName = 'AnimatedTheme';

  @override
  _AnimatedThemePageState createState() => _AnimatedThemePageState();
}

class _AnimatedThemePageState extends State<AnimatedThemePage> {
  var _isLightTheme = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AnimatedThemePage.routeName),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isLightTheme = !_isLightTheme;
          });
        },
        child: const Icon(Icons.refresh),
      ),
      body: Center(
        child: AnimatedTheme(
          data: _isLightTheme ? ThemeData.light() : ThemeData.dark(),
          duration: Duration(milliseconds: 1000),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'hello',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
