import 'package:flutter/material.dart';
import 'TopOfHomePage.dart';
import 'WeatherCard.dart';
import 'BottomOfHomePage.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TopOfHomePage(),

          BottomOfHomePage()



        ],
      );





  }
}
