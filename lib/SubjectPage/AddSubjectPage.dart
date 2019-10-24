import 'package:flutter/material.dart';
import 'package:sidekick/constants/AppConfig.dart';
import 'SubjectNotesCard.dart';
import 'SubjectClassesCard.dart';
import 'SubjectAssignmentCard.dart';
import 'NoteCreation.dart';

class AddSubjectPage extends StatelessWidget {
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



      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Add A Subject',
                        style: TextStyle(
                          fontSize: _height/30,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Name: ',
                        style: TextStyle(
                          fontSize: _height/40,
                        ),
                      ),
                      Container(
                        width: _width*0.50,
                        height: _height/20,
                        child: new TextField(
                          decoration: new InputDecoration(
                              labelText: 'Enter Name of Subject',
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
                ),


                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[

                          GestureDetector(
                            onTap: null,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                width:_width * 0.4,
                                height:_height*0.05,
                                color:AppConfig.primary_color,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/AddNote');
                                  },
                                  child: Text(
                                    'Add A Note',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: _width * 0.04,
                                    ),
                                  ),

                                ),
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: null,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                width:_width * 0.4,
                                height:_height*0.05,
                                color:AppConfig.primary_color,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/AddAssignment');
                                  },
                                  child: Text(
                                    'Add Assignment',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: _width * 0.04,
                                    ),
                                  ),

                                ),
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: null,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            width:_width * 0.45,
                            height:_height*0.05,
                            color:AppConfig.primary_color,
                            child: FlatButton(
                              onPressed: null,
                              child: Text(
                                'Add Class',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: _width * 0.04,
                                ),
                              ),

                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),



                Padding(
                  padding:  EdgeInsets.only(top: _height*0.025, left:_width*0.03),
                  child: SizedBox(

                    height:_height/3.5,

                    //gives it a specific height, card matches this height
                    child: Column( //necessary for some reason
                      children: <Widget>[
                        Expanded( //makes it take up the entire given height
                          child: ListView(

                            // This next line does the trick.
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              SubjectClassesCard(),
                              SizedBox(width:20),
                              SubjectAssignmentCard(),
                              SizedBox(width:20,),
                              SubjectNotesCard(),



                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),


          Padding(
            padding: EdgeInsets.only(bottom: _height*0.04),
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
