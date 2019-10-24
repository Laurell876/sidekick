import 'package:flutter/material.dart';
import 'package:sidekick/constants/AppConfig.dart';

class NoteCreation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
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

      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Add A Note',
                  style: TextStyle(
                    fontSize: _height/30,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),


          Padding(
            padding: EdgeInsets.all(_width*0.05),
            child: Container(

              decoration: BoxDecoration(
                  color: AppConfig.tertiary_color,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[


                  Padding(
                    padding: EdgeInsets.all(_width*0.03),
                    child: Container(

                      width: _width-10,
                      height: _height/20,
                      child: new TextField(
                        decoration: new InputDecoration(

                            labelStyle: TextStyle(
                              fontSize: _height/50,
                            ),

                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,




                            hintText: "Heading...",
                            ),
                      ),
                    ),
                  ),
                  Divider(),


                  Padding(
                    padding: EdgeInsets.all(_width*0.03),
                    child: Container(
                      width: _width-10,
                      height: _height/3,

                      child: new TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: new InputDecoration(

                            labelStyle: TextStyle(
                              fontSize: _height/50,
                            ),

                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,


                            hintText: "Body...",
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


          Padding(
            padding: EdgeInsets.only(top: _height*0.1, right:10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: null,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      width:_width * 0.4,
                      height:_height*0.07,
                      color:AppConfig.primary_color,
                      child: FlatButton(
                        onPressed: null,
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: _width * 0.06,
                          ),
                        ),

                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),



        ],
      ),
    );
  }
}
