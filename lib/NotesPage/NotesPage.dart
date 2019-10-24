import 'package:flutter/material.dart';
import 'TopOfNotes.dart';
import '../constants/AppConfig.dart';


class NotesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
              children: <Widget>[
                TopOfNotes(),
              ],
            );


  }
}
