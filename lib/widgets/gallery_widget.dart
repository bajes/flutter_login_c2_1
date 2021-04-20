import 'package:flutter/material.dart';

class GalleryWidget extends StatelessWidget {
  String imageUrl;
  String description;
  double widths;
  GalleryWidget({this.imageUrl, this.description, this.widths = 300});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(5),
        height: 100,
        width: widths,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken),
                image: AssetImage(imageUrl),
                fit: BoxFit.cover),
            color: Colors.red,
            borderRadius: BorderRadius.circular(10)),
        child: Text(description,
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w700)),
      ),
    );
  }
}
