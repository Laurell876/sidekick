import 'package:flutter/material.dart';




class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'SIDEKICK',
                style: TextStyle(
                  fontFamily: 'OleoScript',
                  fontSize: 50,
                ),
              ),


              Container(


                child: Column(
                  children: <Widget>[




                    Container(
                      width: 350,
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
                      height:20,
                    ),



                    Container(
                      width: 350,
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

                    SizedBox(
                      height:20,
                    ),


                    Container(
                      width: 350,
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


                    SizedBox(
                      height:20,
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Already have an Account?',
                          style: TextStyle(
                              color:Colors.grey,
                              fontSize: 15
                          ),
                        ),
                        Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.black,

                          ),
                        ),
                      ],
                    ),

                  ],
                ),


              ),



              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  width:300,
                  height:45,
                  color:Colors.black,
                  child: FlatButton(
                    onPressed: null,
                    child: Text(
                      'SIGNUP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
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
