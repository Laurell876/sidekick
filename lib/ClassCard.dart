import 'package:flutter/material.dart';

class ClassCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color(0xffBC9BF4),
        ),
        height:_height*0.2,
        width: _width/2.5,

        child: Center(
          child: Text(
            'Mathematics',
            style: TextStyle(
              fontSize: _height/40,
              fontFamily: 'Roboto',
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
