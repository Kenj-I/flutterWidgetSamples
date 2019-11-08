import 'package:flutter/material.dart';
import '../../widgets/listviewScaffold.dart';

import 'alignPage.dart';
import 'centerPage.dart';
import 'containerPage.dart';
import 'fittedBoxPage.dart';
import 'paddingPage.dart';
import 'safeAreaPage.dart';

class LayoutHomePage extends StatelessWidget {
  static const routeName = 'LayoutHome';

  List<String> itemRouteNames = [
    AlignPage.routeName,
    CenterPage.routeName,
    ContainerPage.routeName,
    FittedBoxPage.routeName,
    PaddingPage.routeName,
    SafeAreaPage.routeName,
  ];

  @override
  Widget build(BuildContext context) {
    return ListviewScaffold(
      title: routeName,
      routeList: itemRouteNames,
    );
  }
}
