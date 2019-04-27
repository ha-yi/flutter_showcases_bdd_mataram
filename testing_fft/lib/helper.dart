import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  final String text;
  final Color color;
  const H1(this.text, {Key key, this.color = Colors.black,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: this.color),);
  }
}

class H2 extends StatelessWidget {
  final String text;
  final Color color;
  const H2(this.text, {Key key, this.color = Colors.black,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: this.color),);
  }
}

class H3 extends StatelessWidget {
  final String text;
  final Color color;
  const H3(this.text, {Key key, this.color = Colors.black,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: this.color),);
  }
}

class Caption extends StatelessWidget {
  final String text;
  final Color color;
  const Caption(this.text, {Key key, this.color = Colors.grey,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: this.color),);
  }
}

class BodyText extends StatelessWidget {
  final String text;
  const BodyText(this.text, {Key key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.black45),);
  }
}
