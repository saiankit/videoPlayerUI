import 'package:flutter/material.dart';
import 'package:videoPlayerUI/components/appbarWidget.dart';
import 'package:videoPlayerUI/main.dart';

class NotifiactionPage extends StatefulWidget {
  @override
  _NotifiactionPageState createState() => _NotifiactionPageState();
}

class _NotifiactionPageState extends State<NotifiactionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: FlatButton(
            onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyHomePage()),
  );
},

            child: Text('This is Notification Page'),
          ),
        ),
      ),
    );
  }
}