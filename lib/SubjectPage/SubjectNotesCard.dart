import 'package:flutter/material.dart';
import '../constants/AppConfig.dart';

class SubjectNotesCard extends StatelessWidget {
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
                child: Text('Notes',
                  style: TextStyle(
                    fontSize: _height*0.03,
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Heading',
                      style: TextStyle(
                        fontSize: _height*0.025,
                      ),
                    ),
                    Text('1/1/2019',
                      style: TextStyle(
                        fontSize: _height*0.025,
                      ),
                    ),
                  ],
                ),

              ),
              Divider(),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Heading',
                      style: TextStyle(
                        fontSize: _height*0.025,
                      ),
                    ),
                    Text('1/1/2019',
                      style: TextStyle(
                        fontSize: _height*0.025,
                      ),
                    ),
                  ],
                ),

              ),
              Divider(),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Heading',
                      style: TextStyle(
                        fontSize: _height*0.025,
                      ),
                    ),
                    Text('1/1/2019',
                      style: TextStyle(
                        fontSize: _height*0.025,
                      ),
                    ),
                  ],
                ),

              ),
              Divider(),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Heading',
                      style: TextStyle(
                        fontSize: _height*0.025,
                      ),
                    ),
                    Text('1/1/2019',
                      style: TextStyle(
                        fontSize: _height*0.025,
                      ),
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
