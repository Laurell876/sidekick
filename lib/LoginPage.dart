import 'package:flutter/material.dart';




class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff5f8),
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
                      color:Colors.pink,
                    ),
                  ),
                ],
              ),


              Container(


                child: Column(
                  children: <Widget>[




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
                          'Don\'t Have An Account?',
                          style: TextStyle(
                            color:Colors.grey,
                            fontSize: 15
                          ),
                        ),
                        GestureDetector(
                          onTap:(){
                            Navigator.pushNamed(context, '/SignUp');
                          },
                          child: Text(
                            'REGISTER',
                            style: TextStyle(
                              color: Colors.pink,

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
                    width:300,
                    height:45,
                    color:Colors.pink,
                    child: FlatButton(
                      onPressed: null,
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
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
