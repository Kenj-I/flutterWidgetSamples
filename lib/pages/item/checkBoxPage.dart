import 'package:flutter/material.dart';

import '../../widgets/appScaffold.dart';

class CheckBoxPage extends StatefulWidget {
  static const String routeName = "CheckBox";

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  List<bool> _isBoxChecked = new List.generate(4, (i) => false);
  bool _isBoxCheckedAll = false;
  int _isRadioChecked;
  bool _isSwitchChecked = false;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: CheckBoxPage.routeName,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('ALL'),
                    Checkbox(
                      value: _isBoxCheckedAll,
                      onChanged: (value) {
                        setState(() {
                          _isBoxCheckedAll = value;
                          _isBoxChecked.replaceRange(
                              0, 3, new List.generate(4, (i) => value));
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('A'),
                    Checkbox(
                      value: _isBoxChecked[0],
                      onChanged: (value) {
                        setState(() {
                          _isBoxChecked[0] = value;
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('B'),
                    Checkbox(
                      value: _isBoxChecked[1],
                      onChanged: (value) {
                        setState(() {
                          _isBoxChecked[1] = value;
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('C'),
                    Checkbox(
                      value: _isBoxChecked[2],
                      onChanged: (value) {
                        setState(() {
                          _isBoxChecked[2] = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Radio(
                      value: 1,
                      groupValue: _isRadioChecked,
                      onChanged: (value) {
                        setState(() {
                          _isRadioChecked = value;
                        });
                      },
                    ),
                    Text('1'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Radio(
                      value: 2,
                      groupValue: _isRadioChecked,
                      onChanged: (value) {
                        setState(() {
                          _isRadioChecked = value;
                        });
                      },
                    ),
                    Text('2'),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('OFF'),
                Switch(
                  value: _isSwitchChecked,
                  onChanged: (value) {
                    setState(() {
                      _isSwitchChecked = value;
                    });
                  },
                ),
                Text('ON'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
