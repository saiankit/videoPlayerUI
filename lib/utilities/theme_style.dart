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
  // static final RichText logo = RichText(
  //         text: TextSpan(
  //         text: 'G', 
  //         style: ThemeStyle.appBarLabelG,
  //         children: <TextSpan>[
  //         TextSpan(text: 'NN',style: ThemeStyle.appBarLabelN),
  //         TextSpan(text: ' TV Telugu',style: ThemeStyle.appBarLabelText),
  //         ],
  //       ),
  // );
  static final Container logo = Container(
    child: Row(
      children: <Widget>[
        Container(
          color: Color(0xFFE30401),
          child: Text(
            'G',
            style: TextStyle(
              fontFamily: 'futura',
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),),
        ),
        Container(
          color: Color(0xFF00267F),
          child: Text(
            'NN',
            style: TextStyle(
              fontFamily: 'futura',
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            ),
        ),
        Container(
          child: Text(
            ' News Telugu',
            style: TextStyle(
              fontFamily: 'futura',
              fontSize: 30.0,
              color: Colors.black,
            ),
          ),
        )
      ],
    ),
  );
}