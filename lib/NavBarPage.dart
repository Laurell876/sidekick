import 'package:flutter/material.dart';
import 'package:sidekick/HomePage.dart';
import 'package:sidekick/TimetablePage.dart';
import 'package:sidekick/NotesPage.dart';
import 'package:flutter/services.dart';
import 'package:sidekick/ClassesPage.dart';


class NavBarPage extends StatefulWidget{
  @override
  _NavBarPageState createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {




  int _selectedIndex = 0;
  static  TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    NotesPage(),
    ClassesPage(),
    TimetablePage(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;


    @override
    void initState(){
      super.initState();
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
      ]);
    }




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

                      Row(
                        children: <Widget>[
                          Text('Side',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OleoScript',
                              fontSize: 30,
                            ),
                          ),
                          Text('kick',
                            style: TextStyle(
                              color: Colors.pink,
                              fontFamily: 'OleoScript',
                              fontSize: 30,
                            ),
                          ),
                        ],
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
            icon: Icon(Icons.class_),
            title: Text('Classes',
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
