import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/change_boxsize.dart';

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
    return Column(
      children: <Widget>[
      ListView(
        children: <Widget>[
          CupertinoButton(
            color: Colors.white,
            padding: EdgeInsets.all(10.0),
            borderRadius: BorderRadius.circular(2),
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeBoxsize()));},
            child: Text('크기 변경 애니메이션')
          ),
   ],)
      ],
    );
 }
}
