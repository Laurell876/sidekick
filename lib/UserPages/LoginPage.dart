import 'package:flutter/material.dart';
import '../constants/AppConfig.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import "../models/LoginModel.dart";

import 'package:rflutter_alert/rflutter_alert.dart';

//the 100 is just a placeholder value as soon as the widget is built this value is replaced
double w = 100;
double h = 100;


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


    //alows me to use height and width og context outside of build method
    w = _width;
    h = _height;

    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/crayons.jpg'),
              fit: BoxFit.cover
          ),
        ),
        child: SafeArea(
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
                  onTap: () {
                    Navigator.pushNamed(context, '/NavBarPage');
                    }
                    ,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Container(
                      width: _width*0.8,
                      height: _height*0.05,
                      color:AppConfig.primary_color,
                      child: FlatButton(
                        onPressed: () {
                          // setState(() {
                          //   _progressBarState = true;
                          // });
                          // _makePostRequest()
                          // .then((result) {
                          //   setState(() {
                          //     if (_progressBarState) {
                          //       _progressBarState = false;
                          //     }
                          //   });
                          // });
                          Navigator.pushNamed(context, '/NavBarPage');
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
      ),
    );
  }

  //style for alert boxes
  var alertStyle = AlertStyle(
    animationType: AnimationType.grow,
    isCloseButton: false,
    isOverlayTapDismiss: false,


    descStyle: TextStyle(
      fontWeight: FontWeight.bold,
      //fontSize:  w*0.04,
      fontSize: w*0.20,
      color: Colors.grey,
    ),


    animationDuration: Duration(milliseconds: 350),


    alertBorder: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: BorderSide(

      ),
    ),


    titleStyle: TextStyle(
      color: AppConfig.primary_color,
    ),
  );



  Future  _makePostRequest() async {
    print("hello");


    Map<String, dynamic> requestBody = {
      "email": _emailController.text,
      "password": _passwordController.text
    };

    var client = http.Client();
    String url = 'http://192.168.0.61:3001/user/login'; //localhost has to be replaced with 10.0.2.2

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
      print("hello");

    await new Future.delayed(new Duration(milliseconds:1000), () {
        Alert(
          context: context,
          style: alertStyle,
          type: AlertType.success,
          title: "Login Success",
          //desc: "Click ok to login",
          buttons: [

        DialogButton(
          radius: BorderRadius.all(Radius.circular(10.0)),
          child: Text(
          "Cancel",
            style: TextStyle(
              color: Colors.white,
              fontSize: w*0.04,
            ),
          ),
          color: Colors.grey,
            onPressed: () => Navigator.pop(context),
          width: w*0.6,
        ),

        DialogButton(
          radius: BorderRadius.all(Radius.circular(10.0)),
          child: Text(
            "Ok",
            style: TextStyle(
                color: Colors.white,
                fontSize: w*0.04,
            ),
          ),
          color: AppConfig.primary_color,
          onPressed: () {
            Navigator.pushNamed(context, '/NavBarPage');
          },

        )



          ],
        ).show();
//        Navigator.pushNamed(context, '/NavBarPage');
      });
    } else {
      await new Future.delayed(new Duration(milliseconds:1000), () {
        Alert(
          context: context,
          style: alertStyle,
          type: AlertType.error,
          title: "Login failure",
          desc: "Please enter a valid username and password",
          buttons: [
            DialogButton(
              radius: BorderRadius.all(Radius.circular(10.0)),
              child: Text(
                "Ok",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: w*0.04,
                ),
              ),
              color: AppConfig.primary_color,
              onPressed: () => Navigator.pop(context),

            )
          ],
        ).show();
      });
    }

    
  }


}
