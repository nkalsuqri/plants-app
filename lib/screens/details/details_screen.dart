import 'package:flutter/material.dart';
import 'package:pant_app/screens/details/component/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key, this.contry, this.pic, this.price, this.title})
      : super(key: key);
  final String contry;
  final String pic;
  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(contry: contry, pic: pic, title: title, price: price),
    );
  }
}
