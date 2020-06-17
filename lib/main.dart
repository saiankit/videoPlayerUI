import 'package:flutter/material.dart';
import 'package:videoPlayerUI/components/drawer.dart';
import 'components/appbarWidget.dart';
import 'components/bottomNavBarWidget.dart';
final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
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
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color(0xFFE9E9E9),
    key: scaffoldKey,
    // drawer: MainDrawer(),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top:15.0,left: 15.0,right: 15.0),
            child: Column(
            children: <Widget>[
              Appbar(),
              BottomNavBar()
            ],
        ),
      ),
    ),
  );
}
}