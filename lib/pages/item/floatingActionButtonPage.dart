import 'package:flutter/material.dart';
import '../../widgets/appScaffold.dart';

class FloatingActionButtonPage extends StatelessWidget {
  static const String routeName = 'FloatActionButton';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: routeName,
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
