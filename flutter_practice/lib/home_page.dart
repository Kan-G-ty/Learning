import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/change_boxsize.dart';
import 'package:flutter_practice/my_calc.dart';
import 'package:flutter_practice/my_form_valid.dart';
import 'package:flutter_practice/my_tab_controller.dart';
import 'package:flutter_practice/sliver_appbar.dart';
import 'package:flutter_practice/snackbar_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Image.network(
            'https://cdn.clien.net/web/api/file/F01/5750413/6fde2f9518adf.jpg',
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            flexibleSpace: SizedBox(
              child: Placeholder(),
            ),
            title: Text('Home'),
            backgroundColor: Colors.black.withOpacity(0),
            elevation: 0,
          ),
          body: _buildBody(),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Container(
        color: Colors.transparent,
        height: 1000,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _makebutton('크기 변경 애니메이션', ChangeBoxsize()),
              _makebutton('Sliver 앱바', SliverAppbar()),
              _makebutton('Snackbar 구현', MySnackbar()),
              _makebutton('탭 컨트롤러', MyTabController()),
              _makebutton('Form Validation', MyFormValid()),
              _makebutton('자체 계산기', MyCalc()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _makebutton(label, route) {
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
