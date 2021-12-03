import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pant_app/constants.dart';
import 'package:pant_app/screens/details/component/bay_and_description.dart';
import 'package:pant_app/screens/details/component/icon_card.dart';
import 'package:pant_app/screens/details/component/image_and_icon.dart';
import 'package:pant_app/screens/details/component/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key key, this.contry, this.pic, this.price, this.title})
      : super(key: key);
  final String contry;
  final String pic;
  final String title;
  final double price;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcon(
              size: size, title: title, pic: pic, contry: contry, price: price),
          TitleAndPrice(
              title: title, pic: pic, country: contry, price: price.toInt()),
          BayAndDescription(),
        ],
      ),
    );
  }
}
