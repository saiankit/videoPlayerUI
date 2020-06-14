import 'package:flutter/material.dart';
import '../utilities/theme_style.dart';
import '../screens/notifications.dart';
class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ThemeStyle.logo,
        IconButton(
          icon:Icon(Icons.notifications,size: 30.0,),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: 
                  (context) => NotifiactionPage()
              ),
            );
          }
        )
      ]
    );
  }
}