import 'package:flutter/material.dart';
import 'package:videoPlayerUI/main.dart';
import '../screens/filmDhaba.dart';
import '../screens/foodandHealth.dart';
import '../screens/politics.dart';
class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    FilmDhaba(),
    FoodAndHealth(),
    Politics()
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: Text('Home'),
          activeIcon: Icon(
            Icons.home,
            color: Colors.black,
          )
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.movie,
            color: Colors.grey,
          ),
          title: Text('Film'),
          activeIcon: Icon(
            Icons.movie,
            color: Colors.black,
          )
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.local_hospital,
            color: Colors.grey,
          ),
          title: Text('Health'),
          activeIcon: Icon(
            Icons.local_hospital,
            color: Colors.black,
          )
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: Text('Politics'),
          activeIcon: Icon(
            Icons.home,
            color: Colors.black,
          )
        )
      ],
    );
  }
}