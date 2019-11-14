import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Datum {
  final int height, width, x, y;

  Datum({this.height, this.width, this.x, this.y});
}

class Remake extends StatefulWidget {
  @override
  _RemakeState createState() => _RemakeState();
}

class _RemakeState extends State<Remake> {
  GlobalKey previewContainer = new GlobalKey();
  int originalSize = 800;

  Image _image = Image.network(
    "https://file-download.jandi-box.com/18119981/2019/11/13/15736252450800c3c8483a5fe1a6e9cdce891ed643020?Expires=1573697492&Signature=EE2Yj0ubJBePiuBzcCNbu9xa2tEguXw0x-WFEGnazPCkRuqPGc5etbulPCodvg2bLhLU6lfrQ6TkVncCmJOqy-bZSmWnbL~2iDgl7yQ0-gJn7ZAnOF5DxwLYC41ab7WVTGR3-P11GUJO2KG-i2u~1u9irNGDPBsO2wgBLfD5VkuKdGHOEytgDNmAy6~syXxhCNjNFl6H8iQ3l0jlYBwwjWqJtxJv59tpg8l5FrCpyq54c4AXTSaN16X4juU91t65XkzcfqNezOLRLfXQEi5A7apBXx0cFdkoHZmDgrzhW9taqk4XYR7xQCtJTTl6TyjVdslGc~lzlB3doJxM6MK02Q__&Key-Pair-Id=APKAJ542KAGWCBA2SXPA",
  );
  Image _image2;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    double factor = size / originalSize;
    Datum data = Datum(
      height: (106 * factor).floor(),
      width: (247 * factor).floor(),
      x: (90 * factor).floor(),
      y: (250 * factor).floor(),
    );
    Datum data2 = Datum(
      height: (49 * factor).floor(),
      width: (178 * factor).floor(),
      x: (90 * factor).floor(),
      y: (310 * factor).floor(),
    );
    return Scaffold(
      body: Container(
        width: size,
        padding: EdgeInsets.only(top: 40.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              RepaintBoundary(
                key: previewContainer,
                child: Stack(
                  children: <Widget>[
                    _image,
                    Positioned(
                      top: data.y.toDouble() - 15,
                      left: data.x.toDouble(),
                      child: Container(
                        width: data.width.toDouble(),
                        height: data.height.toDouble(),
                        child: TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "아침 뭐 먹었니?",
                          ),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: data2.y.toDouble() - 15,
                      left: data2.x.toDouble(),
                      child: Container(
                        width: data2.width.toDouble(),
                        height: data2.height.toDouble(),
                        child: TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "점심은?",
                          ),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                child: Text('Download'),
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
              ),
              _image2 != null ? _image2 : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
