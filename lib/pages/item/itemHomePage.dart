import 'package:flutter/material.dart';

import '../../widgets/listviewScaffold.dart';

import 'cardPage.dart';
import 'checkboxPage.dart';
import 'circleAvatarPage.dart';
import 'drawerPage.dart';
import 'floatingActionButtonPage.dart';
import 'iconPage.dart';
import 'imagePage.dart';
import 'opacityPage.dart';
import 'progressPage.dart';

class ItemHomePage extends StatelessWidget {
  static const routeName = 'ItemHome';

  List<String> itemRouteNames = [
    CardPage.routeName,
    CheckBoxPage.routeName,
    CircleAvatarPage.routeName,
    DrawerPage.routeName,
    FloatingActionButtonPage.routeName,
    IconPage.routeName,
    ImagePage.routeName,
    OpacityPage.routeName,
    ProgressPage.routeName,
  ];

  @override
  Widget build(BuildContext context) {
    return ListviewScaffold(
      title: routeName,
      routeList: itemRouteNames,
    );
  }
}
