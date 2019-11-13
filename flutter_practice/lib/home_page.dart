import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/change_boxsize.dart';
import 'package:flutter_practice/edit_diary.dart';
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
            'https://image.fmkorea.com/files/attach/new/20180501/3655299/575797613/1038871002/f4bdc8d4675492329e6619c52e5c3bf6.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: _buildBody(),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 180,
          elevation: 0,
          backgroundColor: Colors.black.withOpacity(0.2),
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            background: Opacity(
              opacity: 0.8,
              child: Image.network(
                'https://pbs.twimg.com/media/EDyngsxU8AEiWgg.jpg',
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) => _buildList(),
              childCount: 1),
        )
      ],
    );
  }

  Widget _makebutton(label, route) {
    return CupertinoButton(
        color: Colors.orange.withOpacity(0.7),
        padding: EdgeInsets.all(10.0),
        borderRadius: BorderRadius.circular(2),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => route));
        },
        child: Text(label));
  }

  Widget _buildList() {
    return Container(
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
            _makebutton('다이어리 테스트', Remake()),
          ],
        ),
      ),
    );
  }
}
