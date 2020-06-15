import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: selectedIndex,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: Text('Home',style: TextStyle(color: Colors.black),),
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
          title: Text('Film',style: TextStyle(color: Colors.black),),
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
          title: Text('Health',style: TextStyle(color: Colors.black),),
          activeIcon: Icon(
            Icons.local_hospital,
            color: Colors.black,
          )
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.poll,
            color: Colors.grey,
          ),
          title: Text('Politics',style: TextStyle(color: Colors.black),),
          activeIcon: Icon(
            Icons.poll,
            color: Colors.black,
          )
        )
      ],
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}