import 'package:flutter/material.dart';
import '../main.dart';
import '../utilities/theme_style.dart';
class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // IconButton(
          //   icon:  Icon(Icons.menu,size: 25.0,),
          //   onPressed: () {
          //     if(scaffoldKey.currentState.isDrawerOpen){
          //     scaffoldKey.currentState.openEndDrawer();
          //   }else{
          //     scaffoldKey.currentState.openDrawer();
          //   }
          //   },
          // ),
          ThemeStyle.logo,
          // IconButton(
          //   icon:Icon(Icons.notifications,size: 25.0,),
          //   onPressed: () {
          //   },
          // )
        ]
      ),
    );
  }
}
