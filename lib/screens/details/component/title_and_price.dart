import 'package:flutter/material.dart';
import 'package:pant_app/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({Key key, this.country, this.title, this.pic, this.price})
      : super(key: key);
  final String title, country, pic;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "$title\n",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      )),
              TextSpan(
                  text: "$country",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 20))
            ]),
          ),
          Spacer(),
          Text(
            "\OMR $price",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
