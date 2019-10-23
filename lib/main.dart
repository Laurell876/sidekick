import 'package:flutter/material.dart';
import 'package:sidekick/LoginAndSignUp.dart';
import 'package:sidekick/LoginPage.dart';
import 'package:sidekick/SignUpPage.dart';
import 'package:sidekick/NavBarPage.dart';
import 'package:flutter/services.dart';

const PrimaryColor = Colors.black;
Future main() async{
  WidgetsFlutterBinding.ensureInitialized(); //needed to lock orientation
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]); //locks orientation

  runApp(MaterialApp(

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

}