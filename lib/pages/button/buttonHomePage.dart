import 'package:flutter/material.dart';

import '../../widgets/listviewScaffold.dart';
import 'dropdownButtonPage.dart';
import 'flatButtonPage.dart';
import 'iconButtonPage.dart';
import 'raisedButtonPage.dart';

class ButtonHomePage extends StatelessWidget {
  static const String routeName = 'ButtonHome';
  List<String> buttonRouteNames = <String>[
    DropdownButtonPage.routeName,
    FlatButtonPage.routeName,
    IconButtonPage.routeName,
    RaisedButtonPage.routeName,
  ];

  @override
  Widget build(BuildContext context) {
    return ListviewScaffold(
      title: routeName,
      routeList: buttonRouteNames,
    );
  }
}
