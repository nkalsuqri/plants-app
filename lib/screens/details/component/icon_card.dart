import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pant_app/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({Key key, @required this.size, this.image}) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      width: 62,
      padding: EdgeInsets.all(kDefultPadding / 2),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      decoration: BoxDecoration(
        color: kBackgroundolor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.22),
              offset: Offset(0, 15)),
          BoxShadow(
              blurRadius: 20, color: Colors.white, offset: Offset(-15, -15)),
        ],
      ),
      child: SvgPicture.asset(image),
    );
  }
}
