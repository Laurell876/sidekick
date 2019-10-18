import 'package:flutter/material.dart';


class WeatherSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

        child: Flexible(
          child: ListView(

            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SizedBox(width:20),
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Container(
                  width: 300.0,
                  height:80,
                  color: Colors.grey[200],

                ),
              ),
              SizedBox(height:30,width:20,),


              SizedBox(width:20),
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Container(
                  width: 300.0,
                  height:80,
                  color: Colors.grey[200],

                ),
              ),
              SizedBox(height:30,width:20,),


              SizedBox(width:20),
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Container(
                  width: 300.0,
                  height:80,
                  color: Colors.grey[200],

                ),
              ),
              SizedBox(height:30,width:20,),




            ],
          ),
        ),


    );
  }
}
