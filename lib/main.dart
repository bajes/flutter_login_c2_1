import 'package:flutter/material.dart';
import 'package:login_flutter_1/models/student.dart';
import 'package:login_flutter_1/styles.dart';
import 'package:login_flutter_1/widgets.dart';
import 'package:login_flutter_1/widgets/assignment_widget.dart';
import 'package:login_flutter_1/widgets/custom_text.dart';

void main() {
  runApp(MaterialApp(
    home: GalleryPage(),
  ));
}

// class LoginScreen extends StatelessWidget {
//   String userName = 'omar';
//   String email = 'omar@gmail.com';
//   String address = 'Palestine, Gaza';
//   List<Student> contents = [
//     Student('omar', Colors.blue),
//     Student('ahmed', Colors.green),
//     Student('hassan', Colors.yellow),
//     Student('ali', Colors.red),
//     Student('wael', Colors.orange),
//     Student('Mohammed', Colors.orange)
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Login'),
//         ),
//         body: Center(
//           child: Container(
//             child: SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: contents.map((e) {
//                     return CustomContainer(
//                       content: e.name,
//                       color: e.containerColor,
//                     );
//                   }).toList()),
//             ),
//           ),
//         ));
//   }
// }

class GalleryPage extends StatelessWidget {
  List<Product> products = [
    Product('assets/images/clothes.jpg', 'Clothes'),
    Product('assets/images/clothes2.jpg', 'Clothes'),
    Product('assets/images/makeup.jpg', 'Makeup'),
    Product('assets/images/makeup2.jpg', 'Makeup'),
    Product('assets/images/perfume.jpg', 'Perfume'),
    Product('assets/images/perfume2.jpg', 'Perfume'),
    Product('assets/images/plane.jpg', 'Travel'),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery Page'),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: products.map((e) {
            return GalleryWidget(
                imageUrl: e.imageUrl, description: e.description);
          }).toList()),
        ),
      ),
    );
  }
}

class GalleryWidget extends StatelessWidget {
  String imageUrl;
  String description;
  GalleryWidget({this.imageUrl, this.description});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(20),
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken),
                image: AssetImage(imageUrl),
                fit: BoxFit.cover),
            color: Colors.red,
            borderRadius: BorderRadius.circular(30)),
        child: Text(description,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w700)),
      ),
    );
  }
}
