import 'package:flutter/material.dart';
import 'package:sidekick/DayOfWeekCard.dart';
import 'package:sidekick/UpComingCard.dart';
import 'TopOfTimetable.dart';

class TimetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TopOfTimetable(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpComingCard(),
            ),
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
