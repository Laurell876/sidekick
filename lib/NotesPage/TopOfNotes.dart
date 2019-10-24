import 'package:flutter/material.dart';
import 'NoteCard.dart';
import 'AssignmentCard.dart';



class TopOfNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Assignments',
            style: TextStyle(
              fontSize: _height/30,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Column(
          children: <Widget>[
            AssignmentCard(),
            AssignmentCard(),
            AssignmentCard(),
            AssignmentCard(),

          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Notes',
            style: TextStyle(
              fontSize: _height/30,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Column(
          children: <Widget>[
            NoteCard(),
            NoteCard(),
            NoteCard(),
            NoteCard(),

          ],
        ),
      ],
    );
  }
}
