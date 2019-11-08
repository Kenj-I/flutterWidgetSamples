import 'dart:async';
import 'package:flutter/material.dart';
import '../../widgets/appScaffold.dart';

class ProgressPage extends StatefulWidget {
  static const String routeName = 'Progress';

  @override
  _ProgressPageState createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  bool _isProgressVisible = false;
  bool _isActionButtonVisible = true;
  void showProgress() {
    setState(() {
      _isProgressVisible = true;
      _isActionButtonVisible = false;
    });

    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        _isProgressVisible = false;
        _isActionButtonVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: ProgressPage.routeName,
      floatingActionButton: Visibility(
        visible: _isActionButtonVisible,
        child: FloatingActionButton(
          onPressed: showProgress,
          child: Icon(Icons.refresh),
        ),
      ),
      body: Center(
        child: Visibility(
          visible: _isProgressVisible,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: CircularProgressIndicator(),
                margin: EdgeInsets.all(30),
              ),
              Container(
                child: LinearProgressIndicator(),
                margin: EdgeInsets.all(30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
