import 'package:flutter/material.dart';
import '../../widgets/appScaffold.dart';

class ImagePage extends StatelessWidget {
  static const String routeName = 'Image';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: routeName,
      body: Center(
        child: Image.network('https://picsum.photos/250?image=9'),
      ),
    );
  }
}
