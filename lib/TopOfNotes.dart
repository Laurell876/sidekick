import 'package:flutter/material.dart';
import 'package:sidekick/NoteCard.dart';

class TopOfNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Notes',
            style: TextStyle(
              fontSize: 20,
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
