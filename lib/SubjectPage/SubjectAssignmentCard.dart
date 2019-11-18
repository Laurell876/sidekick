import 'package:flutter/material.dart';
import '../constants/AppConfig.dart';

class SubjectAssignmentCard extends StatelessWidget {
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
                child: Text('Assignment',
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
                        Text('Biology',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Enzymes Research',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Given: 1/1/2019',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Due: 2/2/2019',
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
                        Text('Biology',
                          style: TextStyle(
                            fontSize:_width*0.04,
                          ),
                        ),
                        Text('Enzymes Research',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Given: 1/1/2019',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Due: 2/2/2019',
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
                        Text('Biology',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Enzymes Research',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Given: 1/1/2019',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Due: 2/2/2019',
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
                        Text('Biology',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Enzymes Research',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                      ],
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Given: 1/1/2019',
                          style: TextStyle(
                            fontSize: _width*0.04,
                          ),
                        ),
                        Text('Due: 2/2/2019',
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
