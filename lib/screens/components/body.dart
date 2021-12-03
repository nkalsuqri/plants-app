import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pant_app/constants.dart';
import 'package:pant_app/screens/components/featured_plants.dart';
import 'package:pant_app/screens/components/recommandplant.dart';
import 'package:pant_app/screens/components/title_with_more_btn.dart';

import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // for scrooling small phone
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecommandPlant(size: size),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(size: size),
          SizedBox(
            height: kDefultPadding,
          ),
        ],
      ),
    );
  }
}
