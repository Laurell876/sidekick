import 'package:flutter/material.dart';
import 'TopOfNotes.dart';
import '../constants/AppConfig.dart';


class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        Stack(

          children: <Widget>[
            ListView(
              children: <Widget>[
                TopOfNotes(),
              ],
            ),


            Positioned(
              bottom:10,
              right:15,
              child: FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.add),
//                foregroundColor: Colors.black,
                backgroundColor: AppConfig.primary_color,
              ),
            ),
          ],
        );

  }
}
