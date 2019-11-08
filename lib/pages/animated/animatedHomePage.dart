import 'package:flutter/material.dart';

import '../../widgets/listviewScaffold.dart';
import 'animatedPositionedPage.dart';
import 'animatedAlignPage.dart';
import 'animatedContainerPage.dart';
import 'animatedDefaultTextStylePage.dart';
import 'animatedOpacityPage.dart';
import 'animatedPaddingPage.dart';
import 'animatedPhysicalModelPage.dart';
import 'animatedThemePage.dart';

class AnimatedHomePage extends StatelessWidget {
  static const String routeName = 'Animation Home';

  List<String> animatedRouteNames = <String>[
    AnimatedPositionedPage.routeName,
    AnimatedAlignPage.routeName,
    AnimatedContainerPage.routeName,
    AnimatedDefaultTextStylePage.routeName,
    AnimatedOpacityPage.routeName,
    AnimatedPaddingPage.routeName,
    AnimatedPhysicalModelPage.routeName,
    AnimatedThemePage.routeName,
  ];

  @override
  Widget build(BuildContext context) {
    return ListviewScaffold(
      title: routeName,
      routeList: animatedRouteNames,
    );
  }
}
