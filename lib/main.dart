import 'package:flutter/material.dart';
import 'components/appbarWidget.dart';
import 'components/videoList.dart';
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
            padding: const EdgeInsets.only(top:15.0,left: 15.0,right: 15.0),
            child: Column(
            children: <Widget>[
              Appbar(),
              VideoList() 
            ],
        ),
      ),
    ),
  );
}
}
