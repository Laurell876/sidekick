import 'package:flutter/material.dart';
import '../constants/AppConfig.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rflutter_alert/rflutter_alert.dart';
import '../models/SignupModel.dart';


//the 100 is just a placeholder value as soon as the widget is built this value is replaced
double w = 100;
double h = 100;


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _progressBarState = false;

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





                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: _width*0.9,
                          height: _height*0.09,
                          child: new TextField(
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
                      ),




                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: _width*0.9,
                          height: _height*0.09,
                          child: new TextField(
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




                ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Container(
                      width: _width*0.8,
                      height: _height*0.05,
                      color: AppConfig.primary_color,
                      child: FlatButton(
                        onPressed: () {
                          // setState(() {
                          //   _progressBarState = true;
                          // });

                          // _makePostRequest()
                          // .then((result) {
                          //   setState(() {
                          //     if(_progressBarState) {
                          //       _progressBarState = false;
                          //     }
                          //   });
                          // });
                          Navigator.pushNamed(context, '/NavBarPage');
                        },
                        child: _progressBarState
                            ? CircularProgressIndicator()
                        : Text(
                          'SIGNUP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:  _height*0.02,
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



  Future _makePostRequest() async {
    print("hi");


    Map<String, dynamic> requestBody = {
      "email":_emailController.text,
      "password":_passwordController.text
    };
    
    
    var client = http.Client();
    //String url = 'http://localhost:3001/user/signup';
    String url = 'http://192.168.0.61:3001/user/signup'; //localhost has to be replaced with 10.0.2.2
    var response = await client
      .post(
      Uri.encodeFull(url),
      body: jsonEncode(requestBody),
      headers: {
        "Content-Type":"application/json"
      }
    ).whenComplete(client.close);


    var responseBody = json.decode(response.body);
    var message = SignupModel.fromJson(responseBody).message;

    print(message);

    if (message == "User created") {
      await new Future.delayed(new Duration(milliseconds:1000), () {


        Alert(
          context: context,
          style: alertStyle,
          type: AlertType.success,
          title: "Account Created",
          //desc: "Please enter a valid username and password",
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
              onPressed: () {
                Navigator.pushNamed(context, '/Login');
              },
              width: w*0.6,
            )
          ],
        ).show();


//        Navigator.pushNamed(context, '/Login');
      });
    }
    else {

      Alert(
        context: context,
        style: alertStyle,
        type: AlertType.error,
        title: "Error creating account",
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
            width: w*0.6,
          )
        ],
      ).show();
    }

  }
}
