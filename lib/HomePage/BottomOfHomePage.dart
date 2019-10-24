import 'package:flutter/material.dart';
import 'WeatherCard.dart';

class BottomOfHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return
      Column(
        children: <Widget>[
          SizedBox(
            height: _height*0.23,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[

                      SizedBox(width:10),
                      WeatherCard(),
                      SizedBox(width:10),
                      WeatherCard(),
                      SizedBox(width:10),
                      WeatherCard(),

                    ],
                  ),

                ),

              ],

            ),
          ),

        ],
      );

  }
}
