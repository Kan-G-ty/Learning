import 'dart:math';
import 'package:flutter/material.dart';

class ChangeBoxsize extends StatefulWidget {
  @override
  _ChangeBoxsizeState createState() => _ChangeBoxsizeState();
}

class _ChangeBoxsizeState extends State<ChangeBoxsize> {
  double _width = 50;
  double _height = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              _width = Random().nextInt(200).toDouble();
              _height = Random().nextInt(200).toDouble();
            });
          }),
    );
  }

  Widget _buildAppBar() {
    return AppBar();
  }

  Widget _buildBody() {
    return Center(
        child: AnimatedContainer(
      decoration: BoxDecoration(color: Colors.green[500]),
      width: _width,
      height: _height,
      duration: Duration(milliseconds: 300),
    ));
  }
}
