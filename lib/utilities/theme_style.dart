import 'package:flutter/material.dart';

class ThemeStyle {
  static final TextStyle appBarLabelG = TextStyle(
    color: Colors.red,
    fontSize: 30,
    fontFamily: 'futura'
  );
  static final TextStyle appBarLabelN = TextStyle(
    color: Colors.blueAccent,
    fontSize: 30,
    fontFamily: 'futura'
  );
  static final TextStyle appBarLabelText = TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontFamily: 'futura'
  );
  static final RichText logo = RichText(
          text: TextSpan(
          text: 'G', 
          style: ThemeStyle.appBarLabelG,
          children: <TextSpan>[
          TextSpan(text: 'NN',style: ThemeStyle.appBarLabelN),
          TextSpan(text: ' TV Telugu',style: ThemeStyle.appBarLabelText),
          ],
        ),
  );
}