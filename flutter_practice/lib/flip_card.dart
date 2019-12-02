import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class FlipCardPage extends StatefulWidget {
  @override
  _FlipCardPageState createState() => _FlipCardPageState();
}

class _FlipCardPageState extends State<FlipCardPage> {
  var cardKeys = Map<int, GlobalKey<FlipCardState>>();
  GlobalKey<FlipCardState> lastFlipped;

  Widget _buildFlipCard(String text, Color color, int index) {
    return SizedBox(
      height: 120.0,
      child: Card(
        color: color,
        child: Center(
          child:
              Text(text, style: TextStyle(color: Colors.white, fontSize: 20.0)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FlipCards")),
      body: GridView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          cardKeys.putIfAbsent(index, () => GlobalKey<FlipCardState>());
          GlobalKey<FlipCardState> thisCard = cardKeys[index];
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FlipCardWithKeepAlive(
                child: FlipCard(
                  flipOnTouch: false,
                  key: thisCard,
                  front: _buildFlipCard("$index", Colors.blue, index),
                  back: _buildFlipCard("$index", Colors.green, index),
                  onFlip: () {
                    if (lastFlipped != thisCard) {
                      lastFlipped?.currentState?.toggleCard();
                      lastFlipped = thisCard;
                    }
                  },
                ),
              ),
              RaisedButton(
                child: Text("Flip Card"),
                onPressed: () => cardKeys[index].currentState.toggleCard(),
              )
            ],
          );
        },
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}

class FlipCardWithKeepAlive extends StatefulWidget {
  final FlipCard child;

  FlipCardWithKeepAlive({Key key, this.child}) : super(key: key);

  @override
  State<StatefulWidget> createState() => FlipCardWithKeepAliveState();
}

class FlipCardWithKeepAliveState extends State<FlipCardWithKeepAlive>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}
