import 'package:flutter/material.dart';


class NoteCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 2),
      child: Container(
        width:400,
        height:70,
        decoration: BoxDecoration(
          color:  Color(0xfff5d2ff),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Movies To Watch',
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
//                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('17/02/19'),
            ],
          ),
        ),
      ),
    );
  }
}
