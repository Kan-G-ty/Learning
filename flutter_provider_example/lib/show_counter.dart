import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';

class ShowCounter extends StatelessWidget {
  final int _count;
  ShowCounter(this._count);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('confirm')), body: _buildBody());
  }

  Widget _buildBody() {
    return Center(
      child: Text(_count.toString()),
    );
  }
}
