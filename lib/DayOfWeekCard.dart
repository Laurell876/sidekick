import 'package:flutter/material.dart';

class DayOfWeekCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:250,

      decoration: BoxDecoration(
        color: Color(0xffBC9BF4),
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
                          fontSize: 20,
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
                        fontSize: 15,

                      ),
                    ),
                    Text('4A-3',
                      style: TextStyle(
                        fontSize: 15,

                      ),
                    ),
                    Text('Starts: 8:00',
                      style: TextStyle(
                        fontSize: 14,

                      ),
                    ),
                    Text('Ends: 10:00',
                      style: TextStyle(
                        fontSize: 14,

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
                        fontSize: 22,

                      ),
                    ),
                    Text('Ms. Jones',
                      style: TextStyle(
                        fontSize: 15,

                      ),
                    ),
                    Text('4A-3',
                      style: TextStyle(
                        fontSize: 15,

                      ),
                    ),
                    Text('Starts: 8:00',
                      style: TextStyle(
                        fontSize: 14,

                      ),
                    ),
                    Text('Ends: 10:00',
                      style: TextStyle(
                        fontSize: 14,

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
                        fontSize: 22,

                      ),
                    ),
                    Text('Ms. Jones',
                      style: TextStyle(
                        fontSize: 15,

                      ),
                    ),
                    Text('4A-3',
                      style: TextStyle(
                        fontSize: 15,

                      ),
                    ),
                    Text('Starts: 8:00',
                      style: TextStyle(
                        fontSize: 14,

                      ),
                    ),
                    Text('Ends: 10:00',
                      style: TextStyle(
                        fontSize: 14,

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
