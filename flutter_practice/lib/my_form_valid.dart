import 'package:flutter/material.dart';

class MyFormValid extends StatefulWidget {
  @override
  _MyFormValidState createState() => _MyFormValidState();
}

class _MyFormValidState extends State<MyFormValid> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Validation')),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return '필수 입력 칸입니다.';
                }
              },
            ),
            RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  // vaild
                  Scaffold.of(_formKey.currentContext).showSnackBar(SnackBar(
                    content: Text('제출 완료'),
                  ));
                }
              },
              child: Text('입력 완료'),
            )
          ],
        ),
      ),
    );
  }
}
