import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_yahoo/home_page.dart';
import 'package:flutter_yahoo/sigma.dart';
import 'package:provider/provider.dart';

import 'pos.dart';

class WeatherBackground extends StatelessWidget {
  const WeatherBackground({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Consumer<Pos>(builder: (context, pos, child) {
          return Positioned.fill(
            child: Transform.translate(
              offset: Offset((size.width / 2) * pos.curPos, 0),
              child: Image.asset('assets/page${pos.curPage}.jpg',
                  fit: BoxFit.cover),
            ),
          );
        }),
        Consumer<Sigma>(builder: (context, sigma, child) {
          return Positioned.fill(
            child: BackdropFilter(
              filter:
                  ImageFilter.blur(sigmaX: sigma.value, sigmaY: sigma.value),
              child: Container(
                color: Colors.black.withOpacity(0),
              ),
            ),
          );
        })
      ],
    );
  }
}
