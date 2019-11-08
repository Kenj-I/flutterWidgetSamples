import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  static const routeName = 'Text Field';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(routeName),
      ),
      body: Center(
        child: TextField(
          decoration: InputDecoration(hintText: '入力してください'),
        ),
      ),
    );
  }
}
