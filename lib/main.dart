import 'package:flutter/material.dart';
import 'package:videoPlayerUI/utilities/theme_style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top:20.0,left: 20.0,bottom: 8.0,right: 8.0),
            child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                    text: 'G', 
                    style: ThemeStyle.appBarLabelG,
                    children: <TextSpan>[
                    TextSpan(text: 'NN',style: ThemeStyle.appBarLabelN),
                    TextSpan(text: ' TV Telugu',style: ThemeStyle.appBarLabelText),
                    ],
                  ),
                  ),
                  IconButton(
                    icon:Icon(Icons.notifications),
                    onPressed: () {},
                  )
                  ]
              ),          
            ],
        ),
      ),
    ),
  );
}
}
