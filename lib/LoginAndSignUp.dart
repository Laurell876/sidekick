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

             Column(
               children: <Widget>[

                 GestureDetector(
                   onTap: (){Navigator.pushNamed(context, '/SignUp');},
                   child: Container(
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
                 ),



                 SizedBox(
                   height:10,
                 ),


                 GestureDetector(
                   onTap: (){Navigator.pushNamed(context, '/Login');},
                   child: ClipRRect(
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
