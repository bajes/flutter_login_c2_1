import 'package:flutter/material.dart';
import 'package:login_flutter_1/models/product.dart';
import 'package:login_flutter_1/styles.dart';
import 'package:login_flutter_1/widgets.dart';
import 'package:login_flutter_1/widgets/assignment_widget.dart';
import 'package:login_flutter_1/widgets/custom_text.dart';
import 'package:login_flutter_1/widgets/gallery_widget.dart';
import 'models/product.dart';
import 'models/product.dart';
import 'styles.dart';

void main() {
  runApp(MaterialApp(
    home: GalleryPage(),
  ));
}

class GalleryPage extends StatelessWidget {
  List<Product> products = getListProduct();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery Page'),
      ),
      body: Column(
        children: [
          // Center(
          //   child: Container(
          //     width: double.infinity,
          //     color: Colors.red,
          //     child: SizedBox(
          //       height: 50,
          //       child: Center(child: Text('MARKET', style: Styles.myTextStyle)),
          //     ),
          //   ),
          // ),
          // Center(
          //   child: Container(
          //     padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          //     width: double.infinity,
          //     child: SizedBox(
          //       height: 35,
          //       child: Text(
          //         'Category :',
          //         style: Styles.myTextStyle1,
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: products.map((e) {
                return GalleryWidget(
                  imageUrl: e.imageUrl,
                  description: e.description,
                  alignment: Alignment.topLeft,
                  hight: 150,
                );
              }).toList()),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              width: double.infinity,
              child: SizedBox(
                height: 35,
                child: Center(
                  child: Text(
                    '. . .',
                    style: Styles.myTextStyle2,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              width: double.infinity,
              child: SizedBox(
                height: 30,
                child: Text(
                  'Categories :',
                  style: Styles.myTextStyle1,
                ),
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: products.map((e) {
                return GalleryWidget(
                  imageUrl: e.imageUrl,
                  description: e.description,
                  width: 150,
                );
              }).toList()),
            ),
          ),
          Container(
            height: 250,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                  children: products.map((e) {
                return GalleryWidget(
                  imageUrl: e.imageUrl,
                  description: '',
                );
              }).toList()),
            ),
          ),
        ],
      ),
    );
  }
}
