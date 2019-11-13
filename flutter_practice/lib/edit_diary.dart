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
    "https://file-download.jandi-box.com/18119981/2019/11/13/15736252450800c3c8483a5fe1a6e9cdce891ed643020?Expires=1573638893&Signature=PpwQKK9Bq0DDtpG3TCOUITJh1HWGJU8dWNmWjSPCnhflR0D24jHuOznDjH8XZr90OLBegDeIz3I4LhWWAXWjIapiy7EWOdmjpQjhAh84-bNSDUOsmx-JxzK6Kk4oDKS70K-OwYn3V3B7rp18L7kj5M7n~FUSNi-uxXrnAPhvPP0Htnme~UZOhq0gSUxtuXojwMjK59FoKI5J9trme7U4lN~6nZtqGPkDSSqDiTXEapg95p10MJQaNmvNaqBlkbF86TxVcfkRKvaFa5hUH~2zon3m~SRpA07o3ZsITueN~j9naM7AGdFPrNlM8UWubpd8WEjItvmSW0pNic7JgmcBGA__&Key-Pair-Id=APKAJ542KAGWCBA2SXPA",
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
