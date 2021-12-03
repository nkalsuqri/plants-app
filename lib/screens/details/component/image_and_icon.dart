import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pant_app/constants.dart';
import 'package:pant_app/screens/details/component/icon_card.dart';

class ImageAndIcon extends StatelessWidget {
  const ImageAndIcon(
      {Key key,
      @required this.size,
      this.contry,
      this.pic,
      this.price,
      this.title})
      : super(key: key);

  final Size size;
  final String contry;
  final String pic;
  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                      padding: EdgeInsets.symmetric(horizontal: kDefultPadding),
                    ),
                  ),
                  IconCard(size: size, image: "assets/icons/sun.svg"),
                  IconCard(size: size, image: "assets/icons/icon_2.svg"),
                  IconCard(size: size, image: "assets/icons/icon_3.svg"),
                  IconCard(size: size, image: "assets/icons/icon_4.svg"),
                ],
              ),
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage(pic)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29),
                        offset: Offset(0, 10))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
