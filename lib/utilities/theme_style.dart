import 'package:flutter/material.dart';
import '../utilities/theme_colors.dart';
class ThemeStyle {
  static final Container logo = Container(
    child: Row(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
            color: ThemeColors.red,
          ),
                
                child: Text('G',
                  style: TextStyle(
                    fontFamily: 'futura',
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
              ),
              Container(
                decoration: BoxDecoration(
            color: ThemeColors.blue,
          ),
            child: Text('NN',
              style: TextStyle(
                fontFamily: 'futura',
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              ),
          ),
            ],
          ),
        ),
        Container(
          child: Text(' News Telugu',
            style: TextStyle(
              fontFamily: 'futura',
              fontSize: 22.0,
              color: Colors.black,
            ),
          ),
        )
      ],
    ),
  );
}