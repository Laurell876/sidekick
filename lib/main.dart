import 'package:flutter/material.dart';
import 'package:sidekick/LoginAndSignUp.dart';
import 'package:sidekick/LoginPage.dart';
import 'package:sidekick/SignUpPage.dart';
import 'package:sidekick/NavBarPage.dart';


const PrimaryColor = Colors.black;
void main()=>runApp(MaterialApp(

    theme: ThemeData(
      primaryColor: PrimaryColor,
        appBarTheme: AppBarTheme(
          elevation: 0, // This removes the shadow from all App Bars.
        )
    ),


    debugShowCheckedModeBanner: false,
  routes: {
    '/': (context)=>NavBarPage(),
    '/SignUp': (context)=>SignUpPage(),
    '/Login':(context)=>LoginPage(),
    '/NavBarPage':(context)=>NavBarPage(),
  }
));
