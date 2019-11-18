import 'package:flutter/material.dart';
import '../constants/AppConfig.dart';

class SubjectClassesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      width: _width*0.6,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppConfig.tertiary_color,
      ),
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Classes',
                  style: TextStyle(
                    fontSize: _width*0.06,
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Tutorial',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Wednesday',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('4A-3',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Ms. Jones',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Start: 2:00',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('End: 4:00',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
              Divider(),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Tutorial',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Wednesday ',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('4A-3',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Ms. Jones',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Start: 2:00',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('End: 4:00',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
              Divider(),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Tutorial',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Wednesday ',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('4A-3',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Ms. Jones',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Start: 2:00',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('End: 4:00',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
              Divider(),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Tutorial',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Wednesday ',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('4A-3',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Ms. Jones',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Start: 2:00',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('End: 4:00',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
              Divider(),
            ],
          ),
        ],
      ),
    );
  }
}
