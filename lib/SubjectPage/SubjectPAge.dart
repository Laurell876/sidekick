import 'package:flutter/material.dart';
import 'SubjectCard.dart';
import '../constants/AppConfig.dart';



class ClassesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Subjects',
                style: TextStyle(
                  fontSize: _height/30,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),

            Expanded(
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
                // Generate 100 widgets that display their index in the List.
                children: List.generate(4, (index) {
                  return ClassCard();
                }),
              ),
            ),
          ],
        ),
        Positioned(
          bottom:10,
          right:15,
          child: FloatingActionButton(
            onPressed: (){
              Navigator.pushNamed(context, '/AddSub');
            },
            child: Icon(Icons.add),
            backgroundColor: AppConfig.primary_color,
          ),
        ),
      ],

    );

  }
}
