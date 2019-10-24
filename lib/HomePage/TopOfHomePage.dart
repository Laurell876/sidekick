import 'package:flutter/material.dart';
import '../constants/AppConfig.dart';

class TopOfHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      width: MediaQuery.of(context).size.width,

      child: Column(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Profile',
              style: TextStyle(
                fontSize: _height/30,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200.0),
              child: Container(
                height: _height/6,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius:20.0,
                      spreadRadius:5.0,
                      offset: Offset(
                        10.0,
                        10.0,
                      ),
                    ),
                  ],
                ),
                child: Image(
                  image: AssetImage('assets/taylor.png'),
                ),
              ),
            ),
          ),

          Text(
            'Taylor Hill',
            style: TextStyle(
              fontSize: _height/40,
            ),

          ),
          Text(
            'Moscow, Russia',
            style: TextStyle(
              color: Colors.black,
              fontSize: _height/45,
            ),
          ),
        ],
      ),
    );
  }
}
