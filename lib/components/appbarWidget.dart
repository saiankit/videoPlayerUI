import 'package:flutter/material.dart';
import '../utilities/theme_style.dart';

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ThemeStyle.logo,
        ],
      ),
    );
  }
}
