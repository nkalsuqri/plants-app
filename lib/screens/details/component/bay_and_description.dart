import 'package:flutter/material.dart';
import 'package:pant_app/constants.dart';

class BayAndDescription extends StatelessWidget {
  const BayAndDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20))),
                color: kPrimaryColor,
                onPressed: () {},
                child: Text(
                  "Buy Now",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                //color: kPrimaryColor,
                onPressed: () {},
                child: Text(
                  "Descriptions",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 70,
        )
      ],
    );
  }
}
