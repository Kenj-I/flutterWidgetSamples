import 'package:flutter/material.dart';

import 'text/textHomePage.dart';
import 'animated/animatedHomePage.dart';
import 'button/buttonHomePage.dart';
import 'item/itemHomePage.dart';
import 'layout/layoutHomePage.dart';
import 'multiLayout/multiLayoutHomePage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: Text('Widget'),
        ),
        // 数が少ないときはListView、項目数が多いときはListView.builder
        body: ListView(children: <Widget>[
          ListTile(
            title: Text('Text'),
            onTap: () => Navigator.pushNamed(context, TextHomePage.routeName),
          ),
          ListTile(
            title: Text('Animated'),
            onTap: () =>
                Navigator.pushNamed(context, AnimatedHomePage.routeName),
          ),
          ListTile(
            title: Text('Button'),
            onTap: () => Navigator.pushNamed(context, ButtonHomePage.routeName),
          ),
          ListTile(
            title: Text('Item'),
            onTap: () => Navigator.pushNamed(context, ItemHomePage.routeName),
          ),
          ListTile(
            title: Text('Layout'),
            onTap: () => Navigator.pushNamed(context, LayoutHomePage.routeName),
          ),
          ListTile(
            title: Text('Multi Layout'),
            onTap: () =>
                Navigator.pushNamed(context, MultiLayoutHomePage.routeName),
          ),
        ]),
      ),
    );
  }
}
