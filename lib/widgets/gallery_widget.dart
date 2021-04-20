import 'package:flutter/material.dart';
import 'package:login_flutter_1/styles.dart';

class GalleryWidget extends StatelessWidget {
  String imageUrl;
  String description;
  double width;
  double hight;
  Alignment alignment;
  GalleryWidget(
      {this.imageUrl,
      this.description,
      this.width = 300,
      this.hight = 100,
      this.alignment = Alignment.center});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Container(
        alignment: alignment,
        margin: EdgeInsets.all(5),
        height: hight,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken),
                image: AssetImage(imageUrl),
                fit: BoxFit.cover),
            color: Colors.red,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          description,
          style: Styles.myTextStyle3,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
