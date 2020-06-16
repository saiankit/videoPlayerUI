import 'package:flutter/material.dart';
import 'package:videoPlayerUI/widgets/videoList.dart';
import '../utilities/keys.dart';

class FoodAndHealth extends StatefulWidget {
  @override
  _FoodAndHealthState createState() => _FoodAndHealthState();
}

class _FoodAndHealthState extends State<FoodAndHealth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListGenerator(channelID:foodAndHealthChannelID,dbCollectionName:'foodAndHealthChannel')
    );
  }
}