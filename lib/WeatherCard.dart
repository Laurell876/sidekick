import 'package:flutter/material.dart';
import 'constants/AppConfig.dart';

class WeatherCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: AppConfig.tertiary_color,
//                                    border: Border.all(color: Color (0xffBC808D), width: 1,),
            borderRadius: BorderRadius.circular(20.0)
        ),

        width: _width*0.7,
//                              color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 14, horizontal:15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Image.asset('assets/sunny.png',
                      height: _height/30,
                      width:50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20.0),
                      child: Text('Sunny',
                        style: TextStyle(
                          fontSize: _height/38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),



            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '21',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: _height/13,

                    fontWeight: FontWeight.w200,
                  ),
                ),

                Row(
                  children: <Widget>[
                    Text('o',
                      style:TextStyle(
                        fontSize: _height/70,
                      ),
                    ),
                    Text(
                      'C',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w200,
                        fontSize: _height/30,
                      ),
                    ),
                  ],
                ),



              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:12.0),
                  child: Text('8:00',
                    style: TextStyle(
                      fontSize: _height/40,
                    ),
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
