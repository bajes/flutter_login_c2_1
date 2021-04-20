import 'package:flutter/material.dart';
import 'package:login_flutter_1/styles.dart';

class GalleryWidget1 extends StatelessWidget {
  String imageUrl;
  String description;
  int price;
  Alignment alignment;
  EdgeInsets padding;
  String details;
  GalleryWidget1(
      {this.imageUrl,
      this.description,
      this.price = 0,
      this.alignment = Alignment.center,
      this.padding = const EdgeInsets.fromLTRB(0, 0, 0, 0),
      this.details = ''});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.orangeAccent),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(3),
      // color: Colors.white,
      height: 80,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            child: Container(
              alignment: alignment,
              margin: EdgeInsets.all(5),
              padding: padding,
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.1), BlendMode.darken),
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            width: 180,
            height: 50,
            child: Text(
              details,
              style: Styles.myTextStyle1,
            ),
          ),
          SizedBox(
            width: 20,
            height: 50,
          ),
          Container(
            margin: EdgeInsets.all(1),
            alignment: Alignment.center,
            child: SizedBox(
              width: 50,
              height: 30,
              child: Text(
                '$price AED',
                textAlign: TextAlign.center,
                style: Styles.myTextStyle4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
