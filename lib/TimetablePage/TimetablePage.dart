import 'package:flutter/material.dart';
import 'DayOfWeekCard.dart';
import 'UpComingCard.dart';
import 'TopOfTimetable.dart';
import '../constants/AppConfig.dart';
class TimetablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TopOfTimetable(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpComingCard(),
            ),
          ],
        );





  }
}
