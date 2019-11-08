import 'package:flutter/material.dart';

class DropdownButtonPage extends StatefulWidget {
  static const String routeName = 'DropdownButton';

  @override
  _DropdownButtonPageState createState() => _DropdownButtonPageState();
}

class _DropdownButtonPageState extends State<DropdownButtonPage> {
  List<String> valueList = ['Google', 'Dart', 'Flutter'];
  String _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DropdownButtonPage.routeName),
      ),
      body: Center(
        child: DropdownButton(
          value: _selectedValue ?? valueList[0],
          items: valueList.map((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selectedValue = value;
            });
          },
        ),
      ),
    );
  }
}
