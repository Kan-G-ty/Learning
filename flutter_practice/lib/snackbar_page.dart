import 'package:flutter/material.dart';

class MySnackbar extends StatefulWidget {
  @override
  _MySnackbarState createState() => _MySnackbarState();
}

class _MySnackbarState extends State<MySnackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('스낵바'),
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Builder(
        builder: (context) => Center(
              child: RaisedButton(
                child: Text('Show Snackbar'),
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text('저장되었습니다.'),
                    action: SnackBarAction(
                      label: ('취소'),
                      onPressed: () {
                        //눌렀을 때 처리
                      },
                    ),
                  );
                  Scaffold.of(context).showSnackBar(snackBar);
                },
              ),
            ));
  }
}
