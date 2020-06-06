import 'package:flutter/material.dart';
import 'package:saloonowner/registration.dart';
import 'package:saloonowner/value.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Roboto",
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Roboto",

          ),
          headline2: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold
          ),
          headline3: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold
          ),
          headline4: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold
          ),
          headline5: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold
          ),
          headline6: TextStyle(
            color: Color(0xff25d366),
              fontSize: 18,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600
          ),
          bodyText1: TextStyle(
              color: Colors.grey,
              fontSize: 22,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600
          ),
          bodyText2: TextStyle(
              color: blue,
              fontSize: 22,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w600
          ),
        ),
      ),
      home:registartion(),
    );
  }
}

