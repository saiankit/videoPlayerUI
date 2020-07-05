import 'package:flutter/material.dart';
import 'package:videoPlayerUI/widgets/videoList.dart';
import '../utilities/keys.dart';

class DevotionalScreen extends StatefulWidget {
  @override
  _DevotionalScreenState createState() => _DevotionalScreenState();
}

class _DevotionalScreenState extends State<DevotionalScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListGenerator(
            channelID: devotionalChannelID,
            dbCollectionName: 'devotionalChannel'));
  }
}
