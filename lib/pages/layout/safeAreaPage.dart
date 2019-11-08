import 'package:flutter/material.dart';

class SafeAreaPage extends StatelessWidget {
  static const String routeName = "SafeArea";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: SafeArea(
        child: Container(
          child: Center(
            child: Text(
              'This area(light green) is safe area',
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                letterSpacing: 3,
                fontSize: 14,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          color: Colors.green[50],
        ),
      ),
    );
  }
}
