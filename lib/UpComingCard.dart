import 'package:flutter/material.dart';


class UpComingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:200,
      width:300,
      decoration: BoxDecoration(
        color: Color(0xfff5d2ff),
          borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(

          children: <Widget>[

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Upcoming',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

            Divider(
              thickness: 1.4,
              color: Color(0xfffff5f8),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child:Column(
                  children: <Widget>[
                    Row( //mathematics upcoming
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Mathematics',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        Text('8:00',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),

                      ],
                    ),



                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Ms. Brown',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        Text('4A-8',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),

                      ],
                    ),


                  ],
                ),
              ),
            ),


            Divider(
              thickness: 1.4,
              color: Color(0xfffff5f8),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child:Column(
                  children: <Widget>[
                    Row( //mathematics upcoming
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Mathematics',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        Text('11:00',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),

                      ],
                    ),



                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Ms. Brown',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        Text('4A-8',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),

                      ],
                    ),


                  ],
                ),
              ),
            ),


            Divider(
              thickness: 1.4,
              color: Color(0xfffff5f8),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child:Column(
                  children: <Widget>[
                    Row( //mathematics upcoming
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Mathematics',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        Text('13:00',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),

                      ],
                    ),



                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Ms. Brown',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        Text('4A-8',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),

                      ],
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
