import 'package:flutter/material.dart';

class DayOfWeekCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:350,

      decoration: BoxDecoration(
        color: Color(0xfff5d2ff),
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
                          fontSize: 23,
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
                        fontSize: 22,

                      ),
                    ),
                    Text('Ms. Jones',
                      style: TextStyle(
                        fontSize: 18,

                      ),
                    ),
                    Text('4A-3',
                      style: TextStyle(
                        fontSize: 18,

                      ),
                    ),
                    Text('Starts: 8:00',
                      style: TextStyle(
                        fontSize: 16,

                      ),
                    ),
                    Text('Ends: 10:00',
                      style: TextStyle(
                        fontSize: 16,

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
                    Text('Physics',
                      style: TextStyle(
                        fontSize: 22,

                      ),
                    ),
                    Text('Ms. Jones',
                      style: TextStyle(
                        fontSize: 18,

                      ),
                    ),
                    Text('4A-3',
                      style: TextStyle(
                        fontSize: 18,

                      ),
                    ),
                    Text('Starts: 8:00',
                      style: TextStyle(
                        fontSize: 16,

                      ),
                    ),
                    Text('Ends: 10:00',
                      style: TextStyle(
                        fontSize: 16,

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
                    Text('Academic Writing II',
                      style: TextStyle(
                        fontSize: 22,

                      ),
                    ),
                    Text('Ms. Jones',
                      style: TextStyle(
                        fontSize: 18,

                      ),
                    ),
                    Text('4A-3',
                      style: TextStyle(
                        fontSize: 18,

                      ),
                    ),
                    Text('Starts: 8:00',
                      style: TextStyle(
                        fontSize: 16,

                      ),
                    ),
                    Text('Ends: 10:00',
                      style: TextStyle(
                        fontSize: 16,

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
