import 'package:flutter/material.dart';

enum ProductType {
  dart('DART', 'the best object language', 'assets/ex3/dart.png'),
  flutter(
    'FLUTTER',
    'the best mobile widget library',
    'assets/ex3/flutter.png',
  ),
  firebase('FIREBASE', 'the best cloud database', 'assets/ex3/firebase.png');

  final String title;
  final String description;
  final String image;

  const ProductType(this.title, this.description, this.image);
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Products')),
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyCard(product: ProductType.dart),
                MyCard(product: ProductType.flutter),
                MyCard(product: ProductType.firebase),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class MyCard extends StatelessWidget {
  final ProductType product;

  const MyCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(product.image, width: 100, height: 100),
            Text(
              product.title,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
            Text(
              product.description,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}