import 'package:flutter/material.dart';
import 'package:sidekick/TopOfNotes.dart';
import 'package:sidekick/NoteCard.dart';

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
                backgroundColor: Color(0xffBC9BF4),
              ),
            ),
          ],
        );

  }
}
