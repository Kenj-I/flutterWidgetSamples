import 'package:flutter/material.dart';
import '../../widgets/appScaffold.dart';

class BottomNavigationBarPage extends StatelessWidget {
  static const String routeName = 'BttomNavigationBar';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: routeName,
      body: Center(
        child: Text('Please show bottom navigation'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Mypage'),
          ),
        ],
      ),
    );
  }
}
