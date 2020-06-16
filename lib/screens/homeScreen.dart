import 'package:flutter/material.dart';
import 'package:videoPlayerUI/widgets/videoList.dart';
import '../utilities/keys.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListGenerator(channelID:mainChannelID,dbCollectionName:'mainChannel')
    );
  }
}