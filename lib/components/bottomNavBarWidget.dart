import 'package:flutter/material.dart';
import 'package:videoPlayerUI/screens/devotionalScreen.dart';
import 'package:videoPlayerUI/screens/homeScreen.dart';
import 'package:videoPlayerUI/screens/politicsScreen.dart';
import 'package:videoPlayerUI/screens/foodandHealthScreen.dart';
import 'package:videoPlayerUI/screens/filmDhabaScreen.dart';
import 'package:videoPlayerUI/utilities/my_flutter_app_icons.dart';
import 'package:videoPlayerUI/utilities/theme_colors.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 2;

  List<Widget> widgetOptions = <Widget>[
    FilmDhaba(),
    FoodAndHealth(),
    HomeScreen(),
    Politics(),
    DevotionalScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          widgetOptions.elementAt(selectedIndex),
          BottomNavigationBar(
            selectedIconTheme: IconThemeData(
                color: ThemeColors.red, opacity: 100.0, size: 28.0),
            unselectedIconTheme: IconThemeData(
                color: ThemeColors.blue.withOpacity(0.5),
                size: 20.0,
                opacity: 50.0),
            selectedLabelStyle: TextStyle(color: Colors.black),
            unselectedLabelStyle: TextStyle(color: Colors.black),
            backgroundColor: Color(0xFFE9E9E9),
            elevation: 0,
            currentIndex: selectedIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Color(0xFFE9E9E9),
                icon: Icon(Icons.movie_filter),
                title: Text('Film'),
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFFE9E9E9),
                icon: Icon(Icons.local_hospital),
                title: Text('Health'),
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFFE9E9E9),
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFFE9E9E9),
                icon: Icon(Icons.poll),
                title: Text('Politics'),
              ),
              BottomNavigationBarItem(
                backgroundColor: Color(0xFFE9E9E9),
                icon: Icon(MyFlutterApp.om),
                title: Text(
                  'Devotional',
                ),
              )
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ],
      ),
    );
  }
}
