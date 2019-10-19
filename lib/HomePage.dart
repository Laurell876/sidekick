import 'package:flutter/material.dart';

import 'package:sidekick/WeatherCard.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          Container(
              width: MediaQuery.of(context).size.width,

              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 25.0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(200.0),
                    child: Container(
                      height:200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius:20.0,
                            spreadRadius:5.0,
                            offset: Offset(
                              10.0,
                              10.0,
                            ),
                          ),
                        ],
                      ),
                      child: Image(
                        image: AssetImage('assets/taylor.png'),
                      ),
                    ),
                  ),
                  SizedBox(height: 25.0),
                  Text(
                    'Taylor Hill',
                    style: TextStyle(
                      fontSize: 20,
                    ),

                  ),
                  Text(
                    'Moscow, Russia',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

          SizedBox(height:70),

          SizedBox(
            height: 250,
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


          Container(
            width: MediaQuery.of(context).size.width,
            color:Color(0xfffff5f8),

          ),

        ],
      ),
    );
  }
}
