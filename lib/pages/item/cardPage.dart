import 'package:flutter/material.dart';

import '../../widgets/appScaffold.dart';

class CardPage extends StatelessWidget {
  static const String routeName = 'Card';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: routeName,
      body: Center(
        child: Card(
          child: Container(
            height: 200,
            width: 300,
            child: Center(
              child: Text('This is a card widget.'),
            ),
          ),
        ),
      ),
    );
  }
}
