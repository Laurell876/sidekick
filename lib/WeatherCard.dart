import 'package:flutter/material.dart';


class WeatherCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return                              Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xfff5d2ff),
//                                    border: Border.all(color: Color (0xffBC808D), width: 1,),
            borderRadius: BorderRadius.circular(30.0)
        ),

        width: 300.0,
//                              color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Container(


              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14, horizontal:15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Image.asset('assets/sunny.png',
                          height:50,
                          width:60,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:20.0),
                          child: Text('Sunny',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),



                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '21',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 80,

                          fontWeight: FontWeight.w200,
                        ),
                      ),

                      Row(
                        children: <Widget>[
                          Text('o',
                            style:TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'C',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w200,
                              fontSize: 40,
                            ),
                          ),
                        ],
                      ),



                    ],
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical:12.0),
              child: Text('8:00',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),









          ],
        ),
      ),
    );
  }
}
