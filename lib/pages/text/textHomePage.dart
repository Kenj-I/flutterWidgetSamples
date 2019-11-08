import 'package:flutter/material.dart';

import '../../widgets/listviewScaffold.dart';
import 'textPage.dart';
import 'richTextPage.dart';
import 'textFieldPage.dart';
import 'textFormFieldPage.dart';

class TextHomePage extends StatelessWidget {
  static const String routeName = 'Text Home';
  List<String> textRouteNames = [
    TextPage.routeName,
    RichTextPage.routeName,
    TextFieldPage.routeName,
    TextFormFieldPage.routeName,
  ];

  @override
  Widget build(BuildContext context) {
    return ListviewScaffold(
      title: routeName,
      routeList: textRouteNames,
    );
  }
}
