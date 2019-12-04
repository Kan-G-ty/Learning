import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';

class ShowCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<Counter>(context);

    return Scaffold(
        appBar: AppBar(title: Text('confirm')),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(bloc.getCount().toString()),
              CupertinoButton(
                child: Icon(Icons.restore_page),
                onPressed: () => bloc.resetCount(),
              )
            ],
          ),
        ));
  }
}
