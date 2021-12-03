import 'package:flutter/material.dart';
import 'package:pant_app/constants.dart';
import 'package:pant_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundolor,
        appBarTheme: const AppBarTheme(
          backgroundColor: kPrimaryColor,
        ),
        primaryColor: kPrimaryColor,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
          bodyText2:
              TextStyle(fontSize: 30.0, fontFamily: 'Hind', color: kTextColor),
        ),
      ),
      home: Homescreen(),
    );
  }
}
