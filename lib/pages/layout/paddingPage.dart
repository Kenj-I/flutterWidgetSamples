import 'package:flutter/material.dart';
import '../../widgets/appScaffold.dart';

class PaddingPage extends StatelessWidget {
  static const String routeName = 'Padding';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: routeName,
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Container(
          color: Colors.orange,
        ),
      ),
    );
  }
}
