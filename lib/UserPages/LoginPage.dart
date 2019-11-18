import 'package:flutter/material.dart';
import '../constants/AppConfig.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import "../models/LoginModel.dart";


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _progressBarState = false;
  //controllers to get data to send to post request

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                      fontSize: _width*0.13,
                    ),
                  ),
                  Text(
                    'KICK',
                    style: TextStyle(
                      fontFamily: 'OleoScript',
                      fontSize: _width*0.13,
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
                      child: new TextFormField(
                        controller: _emailController,
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
                      height: 0.1,
                    ),


                    Container(
                      width: _width*0.9,
                      height: _height*0.09,
                      child: new TextFormField(
                        controller: _passwordController,
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
                      height: 0.1,
                    ),



                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Don\'t Have An Account?',
                          style: TextStyle(
                            color:Colors.grey,
                            fontSize:  _height*0.02,
                          ),
                        ),
                        GestureDetector(
                          onTap:(){
                            Navigator.pushNamed(context, '/SignUp');
                          },
                          child: Text(
                            'REGISTER',
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
                onTap: () {Navigator.pushNamed(context, '/NavBarPage');},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    width: _width*0.8,
                    height: _height*0.05,
                    color:AppConfig.primary_color,
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          _progressBarState = true;
                        });
                        _makePostRequest()
                        .then((result) {
                          setState(() {
                            if (_progressBarState) {
                              _progressBarState = false;
                            }
                          });
                        });
                      },
                      child: _progressBarState
                          ? const CircularProgressIndicator():

                      Text(
                        'LOGIN',
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


  Future  _makePostRequest() async {
    print("hello");


    Map<String, dynamic> requestBody = {
      "email": _emailController.text,
      "password": _passwordController.text
    };

    var client = http.Client();
    String url = 'http://localhost:3001/user/login'; //localhost has to be replaced with 10.0.2.2

    var response = await client
        .post(
      Uri.encodeFull(url),
      body:jsonEncode(requestBody),
      headers: {
        'Content-Type': 'application/json',
      }

    ).whenComplete(client.close);



    var responseBody = json.decode(response.body); //creates a map
    var message = LoginModel.fromJson(responseBody).message;
    print(message);

    if(message == "Auth successful") {
      await new Future.delayed(new Duration(milliseconds:1500), () {
        Navigator.pushNamed(context, '/NavBarPage');
      });
    }

    
  }


}
