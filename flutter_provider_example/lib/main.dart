import 'package:flutter/material.dart';
import 'package:flutter_provider_example/show_counter.dart';
import 'package:provider/provider.dart';

import 'counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
        create: (context) {
          return Counter();
        },
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(title: 'Flutter Demo Home Page'),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.format_quote),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ShowCounter())),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<Counter>(
              builder: (context, value, child) => Text(
                value.getCount().toString(),
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            FlatButton(
              child: Text('up'),
              onPressed: () {
                Provider.of<Counter>(context).incrementCount();
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Counter>(context, listen: false).incrementCount();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
