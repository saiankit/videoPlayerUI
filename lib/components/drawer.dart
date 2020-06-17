import 'package:flutter/material.dart';
import 'package:videoPlayerUI/main.dart';
import 'package:videoPlayerUI/screens/filmDhabaScreen.dart';
import 'package:videoPlayerUI/utilities/my_flutter_app_icons.dart';
import 'package:videoPlayerUI/utilities/theme_style.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top:80.0,left: 5.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              ThemeStyle.logo,
              ],
            ),
            SizedBox(height: 20.0,),
            ListTile(
              title: Text('GNN News Telugu'),
              leading: Icon(Icons.home),
              onTap: () => {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                )
              },
            ),
            ListTile(
              title: Text('GNN Film Dhaba'),
              leading: Icon(Icons.movie),
              onTap: () => FilmDhaba,
            ),
            ListTile(
              title: Text('GNN Food and Health'),
              leading: Icon(Icons.local_hospital),
            ),
            ListTile(
              title: Text('GNN Politics'),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text('GNN Devotional'),
              leading: Icon(MyFlutterApp.om),
            ),
          ],
        ),
      ),
    );
  }
}