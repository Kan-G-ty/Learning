import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/change_boxsize.dart';
import 'package:flutter_practice/sliver_appbar.dart';
import 'package:flutter_practice/snackbar_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CupertinoButton(
              color: Colors.blue,
              padding: EdgeInsets.all(10.0),
              borderRadius: BorderRadius.circular(2),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChangeBoxsize()));
              },
              child: Text('크기 변경 애니메이션')),
          CupertinoButton(
              color: Colors.blue,
              padding: EdgeInsets.all(10.0),
              borderRadius: BorderRadius.circular(2),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SliverAppbar()));
              },
              child: Text('Sliver 앱바')),
          CupertinoButton(
              color: Colors.blue,
              padding: EdgeInsets.all(10.0),
              borderRadius: BorderRadius.circular(2),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MySnackbar()));
              },
              child: Text('SnackBar 구현')),
        ],
      ),
    );
  }
}
