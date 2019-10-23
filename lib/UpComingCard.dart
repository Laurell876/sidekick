import 'package:flutter/material.dart';


class UpComingCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        height: _height/3.8,
        width:_width*0.8,
        decoration: BoxDecoration(
          color: Color(0xfff5d2ff),
            borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(

            children: <Widget>[

                Padding(
                  padding: const EdgeInsets.fromLTRB(35,0,0,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Upcoming',
                        style: TextStyle(
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
                              fontSize: _height/45,
                            ),
                          ),
                          Text('8:00',
                            style: TextStyle(
                              fontSize: _height/45,
                            ),
                          ),

                        ],
                      ),



                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Ms. Brown',
                            style: TextStyle(
                              fontSize: _height/48,
                            ),
                          ),
                          Text('4A-8',
                            style: TextStyle(
                              fontSize: _height/48,
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
                              fontSize: _height/45,
                            ),
                          ),
                          Text('8:00',
                            style: TextStyle(
                              fontSize: _height/45,
                            ),
                          ),

                        ],
                      ),



                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Ms. Brown',
                            style: TextStyle(
                              fontSize: _height/48,
                            ),
                          ),
                          Text('4A-8',
                            style: TextStyle(
                              fontSize: _height/48,
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
                              fontSize: _height/45,
                            ),
                          ),
                          Text('8:00',
                            style: TextStyle(
                              fontSize: _height/45,
                            ),
                          ),

                        ],
                      ),



                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Ms. Brown',
                            style: TextStyle(
                              fontSize: _height/48,
                            ),
                          ),
                          Text('4A-8',
                            style: TextStyle(
                              fontSize: _height/48,
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



            ],
          ),
        ),
      ),
    );
  }
}
