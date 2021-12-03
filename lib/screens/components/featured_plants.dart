import 'package:flutter/material.dart';
import 'package:pant_app/constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantsCard(
              size: size,
              image: "assets/images/bottom_img_1.png",
              press: () {}),
          FeaturedPlantsCard(
              size: size,
              image: "assets/images/bottom_img_2.png",
              press: () {}),
        ],
      ),
    );
  }
}

class FeaturedPlantsCard extends StatelessWidget {
  const FeaturedPlantsCard(
      {Key key, @required this.size, this.image, this.press})
      : super(key: key);

  final Size size;
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefultPadding,
          top: kDefultPadding / 2,
          bottom: kDefultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
