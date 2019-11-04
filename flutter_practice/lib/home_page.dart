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
          AddButton('크기 변경 애니메이션', ChangeBoxsize()),
          AddButton('Sliver 앱바', SliverAppbar()),
          AddButton('Snackbar 구현', MySnackbar()),
        ],
      ),
    );
  }

  Widget AddButton(label, route) {
    return CupertinoButton(
        color: Colors.blue,
        padding: EdgeInsets.all(10.0),
        borderRadius: BorderRadius.circular(2),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => route));
        },
        child: Text(label));
  }
}
