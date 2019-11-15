//코드: DA01
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animated extends StatefulWidget {
  @override
  _AnimatedState createState() => _AnimatedState();
}

class _AnimatedState extends State<Animated> {
  PageController pageController;

  //list
  List<String> images = [
    'lib/img/card_sample.png',
    'lib/img/card_sample.png',
    'lib/img/card_sample.png',
    'lib/img/card_sample.png'
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 2, viewportFraction: 0.5);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('January 2020'),
        centerTitle: true,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return PageView.builder(
        controller: pageController,
        itemCount: images.length,
        itemBuilder: (context, position) {
          return imageSlider(position);
        });
  }

  imageSlider(int index) {
    return AnimatedBuilder(
        animation: pageController,
        builder: (context, widget) {
          double value = 1;
          if (pageController.position.haveDimensions) {
            value = pageController.page - index;
            value = (1 - (value.abs() * 0.4)).clamp(0.0, 1.0);
          }
          return Center(
            child: SizedBox(
              height: Curves.easeInOut.transform(value) * 380,
              width: Curves.easeInOut.transform(value) * 250,
              child: widget,
            ),
          );
        },
        child: Container(
          child: Image.asset(
            images[index],
            fit: BoxFit.fitWidth,
          ),
        ));
  }
}
