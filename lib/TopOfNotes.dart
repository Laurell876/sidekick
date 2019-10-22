import 'package:flutter/material.dart';
import 'package:sidekick/NoteCard.dart';

class TopOfNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        NoteCard(),
        NoteCard(),
        NoteCard(),
        NoteCard(),

      ],
    );
  }
}
