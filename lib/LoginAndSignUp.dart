import 'package:flutter/material.dart';




class LoginAndSignUp extends StatelessWidget {
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

             Column(
               children: <Widget>[

                 Container(
                   width:300,
                   height:30,
                   child: OutlineButton(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(30.0),
                     ),
                     disabledBorderColor: Colors.black,
                     onPressed: null,
                     child: Text(
                       'SIGN UP',
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 20,
                       ),
                     ),

                   ),
                 ),



                 SizedBox(
                   height:10,
                 ),


                 ClipRRect(
                   borderRadius: BorderRadius.circular(30.0),
                   child: Container(
                     width:300,
                     height:35,
                     color:Colors.black,
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





               ],
             ),





            ],
          ),
        ),
      ),
    );
  }
}
