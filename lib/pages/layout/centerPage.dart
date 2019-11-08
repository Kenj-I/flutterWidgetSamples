import 'package:flutter/material.dart';
import '../../widgets/appScaffold.dart';

class CenterPage extends StatelessWidget {
  static const String routeName = 'Center';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: routeName,
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
      ),
    );
  }
}
