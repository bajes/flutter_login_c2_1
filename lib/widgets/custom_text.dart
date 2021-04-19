import 'package:flutter/material.dart';
import 'package:login_flutter_1/styles.dart';

class MyText extends StatelessWidget {
  String content;
  MyText({this.content});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Text(
          content,
          style: Styles.myTextStyle,
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
