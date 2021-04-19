import 'package:flutter/material.dart';
import 'package:login_flutter_1/styles.dart';

class Widgets {
  static Widget shadyText(String text) {
    return Column(
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: Styles.myTextStyle,
        ),
        Container(
          height: 10,
        )
      ],
    );
  }
}
