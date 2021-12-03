import 'package:flutter/material.dart';
import 'package:pant_app/screens/details/details_screen.dart';

import '../../constants.dart';

class RecommandPlant extends StatelessWidget {
  const RecommandPlant({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    List mylist = [];
    mylist.add(Products("tot", "Oman", 100, "assets/images/image_1.png"));
    mylist.add(Products("roman", "Oman", 300, "assets/images/image_2.png"));
    mylist.add(Products("date", "Oman", 150, "assets/images/image_3.png"));
    print(mylist.length);
    return Container(
        padding: EdgeInsets.only(right: kDefultPadding / 2),
        height: 305,
        //width: 300,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: mylist.length,
            itemBuilder: (context, index) {
              return RecommandPlantCard(
                  size: size,
                  contry: mylist[index].country,
                  image: mylist[index].pic,
                  title: mylist[index].title,
                  price: mylist[index].price,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                contry: mylist[index].country,
                                pic: mylist[index].pic,
                                title: mylist[index].title,
                                price: mylist[index].price)));
                  });
            })
        /*SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              RecommandPlantCard(
                  size: size,
                  contry: "Ruse",
                  image: "assets/images/image_1.png",
                  title: "Hello",
                  price: 500,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(todo: "Ruse")));
                  }),
              RecommandPlantCard(
                  size: size,
                  contry: "Oman",
                  image: "assets/images/image_2.png",
                  title: "Hello",
                  price: 500,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(todo: "Oman")));
                  }),
              RecommandPlantCard(
                  size: size,
                  contry: "TRE",
                  image: "assets/images/image_3.png",
                  title: "Hello",
                  price: 500,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(todo: "TRE")));
                  }),
              RecommandPlantCard(
                  size: size,
                  contry: "USA",
                  image: "assets/images/image_1.png",
                  title: "Hello",
                  price: 500,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(todo: "USA")));
                  }),
            ],
          ),
        ),*/
        );
  }
}

class RecommandPlantCard extends StatelessWidget {
  const RecommandPlantCard(
      {Key key,
      this.size,
      this.contry,
      this.image,
      this.title,
      this.press,
      this.price})
      : super(key: key);

  final Size size;
  final String image, title, contry;
  final Function press;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: kDefultPadding,
        top: kDefultPadding / 2,
        bottom: kDefultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: kPrimaryColor.withOpacity(0.23),
                        offset: Offset(0, 10),
                        blurRadius: 50)
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(
                    children: [
                      TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: "$contry".toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                    ],
                  )),
                  Spacer(),
                  Text("\$$price",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: kPrimaryColor))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Products {
  String title;
  String country;
  double price;
  String pic;
  Products(this.title, this.country, this.price, this.pic);
  @override
  String toString() {
    return '{${this.title},${this.country},${this.price},${this.pic}}';
  }
}
