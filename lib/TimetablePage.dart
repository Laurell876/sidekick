import 'package:flutter/material.dart';
import 'package:sidekick/DayOfWeekCard.dart';
import 'package:sidekick/UpComingCard.dart';
import 'TopOfTimetable.dart';

class TimetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Stack(
      children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TopOfTimetable(),
                UpComingCard(),
              ],
            ),







        Positioned(
          bottom:10,
          right:15,
          child: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.add),
            backgroundColor: Color(0xffBC9BF4),
          ),
        ),
      ],
    );
  }
}
