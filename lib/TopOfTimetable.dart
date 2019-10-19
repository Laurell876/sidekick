import 'package:flutter/material.dart';
import 'package:sidekick/UpComingCard.dart';
import 'package:sidekick/DayOfWeekCard.dart';

class TopOfTimetable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: <Widget>[
        SizedBox(height:20),
        Text('Timetable',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(height:10),



        SizedBox(
          height:300, //gives it a specific height, card matches this height
          child: Column( //necessary for some reason
            children: <Widget>[
              Expanded( //makes it take up the entire given height
                child: ListView(

                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[

                    SizedBox(width:20,),
                    DayOfWeekCard(),
                    SizedBox(width:20,),
                    DayOfWeekCard(),
                    SizedBox(width:20,),
                    DayOfWeekCard(),
                    SizedBox(width:20,),
                    DayOfWeekCard(),


                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height:50),
        UpComingCard(),






      ],
    );
  }
}
