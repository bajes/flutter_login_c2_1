import 'package:flutter/material.dart';
import 'package:login_flutter_1/styles.dart';

class CustomContainer extends StatelessWidget {
  @required
  String content;
  Color color;
  TextStyle textStyle;
  CustomContainer(
      {this.content,
      this.color = Colors.white,
      this.textStyle = const TextStyle(fontSize: 20, color: Colors.black)});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      height: 100,
      width: 300,
      color: this.color,
      child: Text(this.content),
    );
  }
}
