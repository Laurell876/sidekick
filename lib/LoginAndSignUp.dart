import 'package:flutter/material.dart';
import 'constants/AppConfig.dart';



class LoginAndSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Color(0xfff4f4f8),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: Row(
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
              ),

             Padding(
               padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
               child: Column(
                 children: <Widget>[

                   GestureDetector(
                     onTap: (){Navigator.pushNamed(context, '/SignUp');},
                     child: Container(
                       width:300,
                       height:50,
                       child: OutlineButton(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(30.0),
                         ),
                         disabledBorderColor: AppConfig.primary_color,
                         onPressed: null,
                         child: Text(
                           'SIGN UP',
                           style: TextStyle(
                             color: AppConfig.primary_color,
                             fontSize: 20,
                           ),
                         ),

                       ),
                     ),
                   ),






                   Padding(
                     padding: const EdgeInsets.symmetric(vertical:10),
                     child: GestureDetector(
                       onTap: (){Navigator.pushNamed(context, '/Login');},
                       child: ClipRRect(
                         borderRadius: BorderRadius.circular(30.0),
                         child: Container(
                           width:300,
                           height:50,
                           color: AppConfig.primary_color,
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
                   ),





                 ],
               ),
             ),





            ],
          ),
        ),
      ),
    );
  }
}
