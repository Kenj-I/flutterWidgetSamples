import 'package:flutter/material.dart';
import '../../widgets/appScaffold.dart';

class OpacityPage extends StatelessWidget {
  static const String routeName = 'Opacity';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: routeName,
      body: Center(
        child: Opacity(
          opacity: 0.5,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
