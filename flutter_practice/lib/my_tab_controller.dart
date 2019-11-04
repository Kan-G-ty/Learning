import 'package:flutter/material.dart';

class MyTabController extends StatefulWidget {
  @override
  _MyTabControllerState createState() => _MyTabControllerState();
}

class _MyTabControllerState extends State<MyTabController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.access_alarm),
                  text: ('A'),
                ),
                Tab(
                  icon: Icon(Icons.bookmark_border),
                  text: ('B'),
                ),
                Tab(
                  icon: Icon(Icons.calendar_today),
                  text: ('C'),
                )
              ],
            ),
            title: Text('Tab Controller'),
          ),
          body: TabBarView(
            children: <Widget>[Text('Tab1'), Text('Tab2'), Text('Tab3')],
          )),
      length: 3,
    );
  }
}
