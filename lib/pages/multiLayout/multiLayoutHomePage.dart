import 'package:flutter/material.dart';
import '../../widgets/listviewScaffold.dart';

import 'bottomNavigationBarPage.dart';
import 'columnPage.dart';
import 'expandedPage.dart';
import 'listViewPage.dart';
import 'rowPage.dart';
import 'stackPage.dart';
import 'tabbarPage.dart';

class MultiLayoutHomePage extends StatelessWidget {
  static const routeName = 'LayoutHome';

  List<String> itemRouteNames = [
    BottomNavigationBarPage.routeName,
    ColumnPage.routeName,
    ExpandedPage.routeName,
    ListViewPage.routeName,
    RowPage.routeName,
    StackPage.routeName,
    TabbarPage.routeName,
  ];

  @override
  Widget build(BuildContext context) {
    return ListviewScaffold(
      title: routeName,
      routeList: itemRouteNames,
    );
  }
}
