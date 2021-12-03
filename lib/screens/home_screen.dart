import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pant_app/constants.dart';
import 'package:pant_app/screens/components/body.dart';
import 'package:pant_app/screens/components/bottom_nav_bar.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: newAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavbar(),
    );
  }

  AppBar newAppBar() {
    return AppBar(
      //backgroundColor: Colors.black,
      title: const Text('Title'),
      elevation: 0,
      leading: IconButton(
          onPressed: () {}, icon: SvgPicture.asset("assets/icons/menu.svg")),
    );
  }
}
