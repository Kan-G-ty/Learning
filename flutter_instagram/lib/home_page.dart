import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Instagram Clon',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
      ),
      body: _buildBody(),
    );
  }

 Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Text('Instagram에 오신 것을 환영합니다', style: TextStyle(fontSize: 24)),
                Padding(padding: EdgeInsets.all(8.0)),
                Text('사진과 동영상을 보려면 팔로우하세요'),
                Padding(padding: EdgeInsets.all(16.0)),
                SizedBox(
                  width: 260.0,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(8)),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://tykann.github.io/img/profile.jpg'),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(8)),
                        Text('taeyoon@tagsolution.kr', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Theo'),
                        Padding(padding: EdgeInsets.all(8)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.network('https://tykann.github.io/img/profile.jpg', fit: BoxFit.cover)
                            ),
                            SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network('https://tykann.github.io/img/profile.jpg', fit: BoxFit.cover)
                            ),
                            SizedBox(
                                width: 70,
                                height: 70,
                                child: Image.network('https://tykann.github.io/img/profile.jpg', fit: BoxFit.cover)
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(4)),
                        Text('Facebook 친구'),
                        Padding(padding: EdgeInsets.all(6)),
                        RaisedButton(
                          child: Text('팔로우'),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          onPressed: (){},
                        ),
                        Padding(padding: EdgeInsets.all(8))
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
 }
}
