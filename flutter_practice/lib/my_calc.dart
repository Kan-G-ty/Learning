import 'package:flutter/material.dart';

class MyCalc extends StatefulWidget {
  @override
  _MyCalcState createState() => _MyCalcState();
}

class _MyCalcState extends State<MyCalc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: _buildBody());
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              '제작중',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
        Row()
      ],
    );
  }
}
