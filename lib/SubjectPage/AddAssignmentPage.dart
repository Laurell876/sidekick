import 'package:flutter/material.dart';
import 'package:sidekick/constants/AppConfig.dart';


class AddAssignmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset : false,


      appBar: AppBar(
        iconTheme: IconThemeData(
          color: AppConfig.primary_color, //change your color here
        ),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Icon(
                      Icons.event_note,
                      size: 25.0,
                      color: AppConfig.primary_color,
                    ),
                  ),
                  SizedBox(
                    width:6,
                  ),

                  Row(
                    children: <Widget>[
                      Text('Side',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OleoScript',
                          fontSize: 30,
                        ),
                      ),
                      Text('kick',
                        style: TextStyle(
                          color: AppConfig.primary_color,
                          fontFamily: 'OleoScript',
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Container(
                  child: Icon(
                    Icons.more_vert,
                    size: 30.0,
                    color: AppConfig.primary_color,
                  )
              ),
            ],
          ),
        ),



      ),


      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Title: ',
                  style: TextStyle(
                    fontSize: _height/40,
                  ),
                ),
                Container(
                  width: _width*0.50,
                  height: _height/20,
                  child: new TextField(
                    decoration: new InputDecoration(
                        labelText: 'Enter title of assignment',
                        labelStyle: TextStyle(
                          fontSize: _height/50,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(fontSize: _height/50,color: Colors.grey[800]),

                        fillColor: Colors.white70),
                  ),
                ),


              ],
            ),
          ],
        ),
      ),


    );
  }
}
