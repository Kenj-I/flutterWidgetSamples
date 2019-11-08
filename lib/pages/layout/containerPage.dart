import 'package:flutter/material.dart';
import '../../widgets/appScaffold.dart';

class ContainerPage extends StatelessWidget {
  static const String routeName = 'Container';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: routeName,
      body: Container(
        height: 100,
        width: double.infinity,
        color: Colors.red,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}
