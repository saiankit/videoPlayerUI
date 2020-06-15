import 'package:flutter/material.dart';
import '../utilities/theme_style.dart';
class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.menu,size: 20.0,),
          onPressed: () {},
        ),
        ThemeStyle.logo,
        IconButton(
          icon:Icon(Icons.notifications,size: 20.0,),
          onPressed: () {},
          // onPressed: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: 
          //         (context) => VideoList()
          //     ),
          //   );
          // }
        )
      ]
    );
  }
}
