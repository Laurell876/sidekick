import 'package:flutter/material.dart';
import 'package:sidekick/UserPages/LoginAndSignUp.dart';
import 'package:sidekick/UserPages/LoginPage.dart';
import 'package:sidekick/UserPages/SignUpPage.dart';
import 'package:sidekick/NavBarPage.dart';
import 'package:flutter/services.dart';
import 'package:sidekick/SubjectPage/AddSubjectPage.dart';
import 'SubjectPage/NoteCreation.dart';
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
        '/': (context)=> NavBarPage(),
        '/SignUp': (context)=>SignUpPage(),
        '/Login':(context)=>LoginPage(),
        '/NavBarPage':(context)=>NavBarPage(),
        '/AddSub': (context)=>AddSubjectPage(),
        '/AddNote':(context)=>NoteCreation(),
      }
  ));

}