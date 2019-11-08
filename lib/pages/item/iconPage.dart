import 'package:flutter/material.dart';
import '../../widgets/appScaffold.dart';

class IconPage extends StatelessWidget {
  static const String routeName = 'Icon';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: routeName,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.accessibility,
              size: 50,
              color: Colors.green,
            ),
            Icon(
              Icons.fitness_center,
              size: 50,
              color: Colors.green,
            ),
            Icon(
              Icons.flight_takeoff,
              size: 50,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
