import 'package:flutter/material.dart';

enum Product {
  dart(
      title: 'Dart', des: 'the best object language', image: 'assets/dart.png'),
  flutter(
      title: 'Flutter',
      des: 'the best mobile widget library',
      image: 'assets/flutter.png'),
  firebase(
      title: 'Firebase',
      des: 'the best cloud database',
      image: 'assets/firebase.png');

  final String title;
  final String des;
  final String image;
  const Product({required this.title, required this.des, required this.image});
}

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  const ProductCard.dart() : product = Product.dart;

  const ProductCard.flutter() : product = Product.flutter;

  const ProductCard.firebase() : product = Product.firebase;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 1000, //strech the card
        child: Card(
          color: Colors.white,
            elevation: 8,
            margin: const EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    product.image,
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        product.des,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('My Product' , selectionColor: Colors.white,),
         ),
        backgroundColor: Colors.blue,
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ProductCard.dart(),
              ProductCard.flutter(),
              ProductCard.firebase(),
            ],
          ),
        )),
  ));
}
