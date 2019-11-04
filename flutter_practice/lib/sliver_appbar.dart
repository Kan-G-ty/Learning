import 'package:flutter/material.dart';

class SliverAppbar extends StatefulWidget {
  @override
  _SliverAppbarState createState() => _SliverAppbarState();
}

class _SliverAppbarState extends State<SliverAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Space'),
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                  'https://img1.daumcdn.net/thumb/R720x0.q80/?scode=mtistory2&fname=http%3A%2F%2Fcfile25.uf.tistory.com%2Fimage%2F9972833E5D3BAA0129941B',
                  fit: BoxFit.cover),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(_buildList(20)),
          )
        ],
      ),
    );
  }

  List _buildList(int count) {
    List<Widget> listItems = List();
    for (int i = 0; i < count; i++) {
      listItems.add(Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'Item ${i.toString()}',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ));
    }

    return listItems;
  }
}
