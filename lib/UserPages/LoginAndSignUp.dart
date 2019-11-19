import 'package:flutter/material.dart';
import '../constants/AppConfig.dart';



class LoginAndSignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(

//      backgroundColor: Color(0xfff4f4f8),
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
                ),

               Padding(
                 padding: EdgeInsets.fromLTRB(0, 0, 0, _width*0.1),
                 child: Column(
                   children: <Widget>[

                     GestureDetector(
                       onTap: (){Navigator.pushNamed(context, '/SignUp');},
                       child: Container(
                         width: _width*0.8,
                         height: _height*0.05,

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
                               fontSize:  _height*0.02,
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
                             width: _width*0.8,
                             height: _height*0.05,
                             color: AppConfig.primary_color,
                             child: FlatButton(
                               onPressed: null,
                               child:
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
                     ),





                   ],
                 ),
               ),





              ],
            ),
          ),
        ),
      ),
    );
  }
}
