import 'package:flutter/material.dart';

class ListviewScaffold extends StatelessWidget {
  const ListviewScaffold({
    Key key,
    @required this.title,
    @required this.routeList,
  }) : super(key: key);

  final String title;
  final List<String> routeList;

  @override
  Widget build(BuildContext context) {
    List<Widget> tileWidgets = <Widget>[];
    for (var i = 0; i < routeList.length; i++) {
      tileWidgets.add(ListTile(
        title: Text(routeList[i]),
        onTap: () => Navigator.pushNamed(context, routeList[i]),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: tileWidgets,
      ),
    );
  }
}
