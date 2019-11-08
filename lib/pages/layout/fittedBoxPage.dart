import 'package:flutter/material.dart';
import '../../widgets/appScaffold.dart';

class FittedBoxPage extends StatelessWidget {
  static const String routeName = 'FittedBox';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: routeName,
      body: Center(
        child: Container(
          width: 200,
          height: 300,
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Image.network('https://picsum.photos/250?image=9'),
          ),
        ),
      ),
    );
  }
}
