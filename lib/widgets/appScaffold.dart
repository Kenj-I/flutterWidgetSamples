import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    Key key,
    @required this.title,
    @required this.body,
    this.floatingActionButton,
    this.drawer,
    this.bottomNavigationBar,
  }) : super(key: key);

  final String title;
  final Widget body;
  final Widget floatingActionButton;
  final Widget drawer;
  final Widget bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      floatingActionButton: floatingActionButton,
      body: body,
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
