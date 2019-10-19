import 'package:flutter/material.dart';
import 'package:sidekick/DayOfWeekCard.dart';
import 'package:sidekick/UpComingCard.dart';
import 'TopOfTimetable.dart';

class TimetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListView(//pushes it to the top of the screen

          children: <Widget>[
            Stack(
              children: <Widget>[
                TopOfTimetable(),



                Positioned(
                  bottom:0,
                  right:10,
                  child: FloatingActionButton(
                    onPressed: null,
                    child: Icon(Icons.add),
                    backgroundColor: Color(0xfff5d2ff),
                  ),
                ),
              ],
            ),

            
          ],
        );


  }
}
