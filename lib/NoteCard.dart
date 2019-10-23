import 'package:flutter/material.dart';


class NoteCard extends StatelessWidget {
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
          color:  Color(0xfff5d2ff),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Biology',
                    style: TextStyle(
                      fontSize: _width/25,
                      fontStyle: FontStyle.italic,
//                  fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Molecule Notes',
                    style: TextStyle(
                      fontSize:  _width/25,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Written: 18/11/2019',
                    style: TextStyle(
                      fontSize: _width/25,
                      fontStyle: FontStyle.italic,
//                  fontWeight: FontWeight.bold,
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
