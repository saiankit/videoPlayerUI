import 'package:flutter/material.dart';
import 'package:videoPlayerUI/widgets/videoList.dart';
import '../utilities/keys.dart';

class Politics extends StatefulWidget {
  Politics({Key key}) : super(key: key);
  @override
  _PoliticsState createState() => _PoliticsState();
}

class _PoliticsState extends State<Politics> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListGenerator(channelID:politicsChannelID,dbCollectionName:'politicsChannel')
    );
  }
}