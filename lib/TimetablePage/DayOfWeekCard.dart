import 'package:flutter/material.dart';
import '../constants/AppConfig.dart';



class DayOfWeekCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      width: _width*0.7,

      decoration: BoxDecoration(
        color: AppConfig.secondary_color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 8, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Monday',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: _height/35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),


                Divider(
                  thickness: 1.4,
                  color: Color(0xfffff5f8),
                ),


                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Mathematics',
                      style: TextStyle(
                        fontSize: _height/48,
                        fontStyle: FontStyle.italic,

                      ),
                    ),
                    Text('Ms. Jones',
                      style: TextStyle(
                        fontSize: _height/48,

                      ),
                    ),
                    Text('4A-3',
                      style: TextStyle(
                        fontSize: _height/48,

                      ),
                    ),
                    Text('Starts: 8:00',
                      style: TextStyle(
                        fontSize: _height/49,

                      ),
                    ),
                    Text('Ends: 10:00',
                      style: TextStyle(
                        fontSize: _height/49,

                      ),
                    ),
                  ],
                ),





                Divider(
                  thickness: 1.4,
                  color: Color(0xfffff5f8),
                ),


                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Mathematics',
                      style: TextStyle(
                        fontSize: _height/45,
                        fontStyle: FontStyle.italic,

                      ),
                    ),
                    Text('Ms. Jones',
                      style: TextStyle(
                        fontSize: _height/48,

                      ),
                    ),
                    Text('4A-3',
                      style: TextStyle(
                        fontSize: _height/48,

                      ),
                    ),
                    Text('Starts: 8:00',
                      style: TextStyle(
                        fontSize: _height/49,

                      ),
                    ),
                    Text('Ends: 10:00',
                      style: TextStyle(
                        fontSize: _height/49,

                      ),
                    ),
                  ],
                ),





                Divider(
                  thickness: 1.4,
                  color: Color(0xfffff5f8),
                ),


                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Mathematics',
                      style: TextStyle(
                        fontSize: _height/45,
                        fontStyle: FontStyle.italic,

                      ),
                    ),
                    Text('Ms. Jones',
                      style: TextStyle(
                        fontSize: _height/48,

                      ),
                    ),
                    Text('4A-3',
                      style: TextStyle(
                        fontSize: _height/48,

                      ),
                    ),
                    Text('Starts: 8:00',
                      style: TextStyle(
                        fontSize: _height/49,

                      ),
                    ),
                    Text('Ends: 10:00',
                      style: TextStyle(
                        fontSize: _height/49,

                      ),
                    ),
                  ],
                ),







              ],
            ),
          ),




        ],
      ),
    );



  }
}
