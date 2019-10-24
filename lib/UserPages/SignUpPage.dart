import 'package:flutter/material.dart';
import '../constants/AppConfig.dart';



class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'SIDE',
                    style: TextStyle(
                      fontFamily: 'OleoScript',
                      fontSize: 50,
                    ),
                  ),
                  Text(
                    'KICK',
                    style: TextStyle(
                      fontFamily: 'OleoScript',
                      fontSize: 50,
                      color: AppConfig.primary_color,
                    ),
                  ),
                ],
              ),


              Container(


                child: Column(
                  children: <Widget>[




                    Container(
                      width: _width*0.9,
                      height: _height*0.09,
                      child: new TextField(
                        decoration: new InputDecoration(
                            labelText: 'USERNAME',
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black, width: 2.0),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(30.0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            hintText: "Type in your text",
                            fillColor: Colors.white70),
                      ),
                    ),

                    SizedBox(
                      height: _height*0.02,
                    ),



                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: _width*0.9,
                        height: _height*0.09,
                        child: new TextField(
                          decoration: new InputDecoration(
                              labelText: 'EMAIL',
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.black, width: 2.0),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(30.0),
                                ),
                              ),
                              filled: true,
                              hintStyle: new TextStyle(color: Colors.grey[800]),
                              hintText: "Type in your text",
                              fillColor: Colors.white70),
                        ),
                      ),
                    ),




                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: _width*0.9,
                        height: _height*0.09,
                        child: new TextField(
                          decoration: new InputDecoration(

                              labelText: 'PASSWORD',


                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.black, width: 2.0),
                                borderRadius: BorderRadius.circular(30.0),
                              ),

                              border: new OutlineInputBorder(

                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(30.0),
                                ),
                              ),
                              filled: true,
                              hintStyle: new TextStyle(color: Colors.grey[800]),
                              hintText: "Type in your text",
                              fillColor: Colors.white70),
                        ),
                      ),
                    ),




                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Already have an Account?',
                          style: TextStyle(
                              color:Colors.grey,
                            fontSize:  _height*0.02,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context, '/Login');
                          },

                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: AppConfig.primary_color,
                              fontSize:  _height*0.02,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),


              ),



              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/NavBarPage');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    width: _width*0.8,
                    height: _height*0.05,
                    color: AppConfig.primary_color,
                    child: FlatButton(
                      onPressed: null,
                      child: Text(
                        'SIGNUP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize:  _height*0.02,
                        ),
                      ),

                    ),
                  ),
                ),
              ),







            ],
          ),
        ),
      ),
    );
  }
}
