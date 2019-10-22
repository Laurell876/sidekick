import 'package:flutter/material.dart';
import 'package:sidekick/HomePage.dart';
import 'package:sidekick/TimetablePage.dart';
import 'package:sidekick/NotesPage.dart';

class NavBarPage extends StatefulWidget {
  @override
  _NavBarPageState createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {



  int _selectedIndex = 0;
  static  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    HomePage(),

    NotesPage(),
    TimetablePage(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff5f8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.event_note,
                          size: 25.0,
                          color: Colors.pinkAccent,
                        ),
                      ),
                      SizedBox(
                        width:6,
                      ),

                      const Text('Sidekick',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OleoScript',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),

                  Container(
                      child: Icon(
                        Icons.more_vert,
                        size: 30.0,
                        color: Colors.pinkAccent,
                      )
                  ),
                ],
              ),
            ),



//            Expanded(
//              child: Divider(
//                color: Colors.black,
//              ),
//            ),





      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),






      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home',
              style: TextStyle(
                fontSize: 15,
              ),

            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: Text('Notes',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            title: Text('Timetable',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),


        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
