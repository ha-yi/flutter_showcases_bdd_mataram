import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final CardContent card;
  const CardItem({Key key, this.card}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        children: <Widget>[
          Card(
            child: Container(
              width: 60,
              height: 60,
              child: Center(
                child: card.icon,
              ),
            ),
          ),
          Text(card.text),
        ],
      ),
    );
  }
}

class CardContent {
  final Widget icon;
  final String text;

  CardContent(this.icon, this.text);
}