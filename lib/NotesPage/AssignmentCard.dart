import 'package:flutter/material.dart';
import '../constants/AppConfig.dart';

class AssignmentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 2),
      child: Container(
        width: _width*0.9,
        height: _height/10,
        decoration: BoxDecoration(
          color:  AppConfig.secondary_color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Physics',
                    style: TextStyle(
                      fontSize: _width/25,
                      fontStyle: FontStyle.italic,
//                  fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Ms. Jones',
                    style: TextStyle(
                      fontSize: _width/25,
                    ),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Given: 17/09/2019',
                    style: TextStyle(
                      fontSize: _width/25,
                    ),
                  ),
                  Text('Due: 17/10/2019',
                      style: TextStyle(
                      fontSize: _width/25,
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
