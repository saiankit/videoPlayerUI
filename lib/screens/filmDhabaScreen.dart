import 'package:flutter/material.dart';
import 'package:videoPlayerUI/widgets/videoList.dart';
import '../utilities/keys.dart';
class FilmDhaba extends StatefulWidget {
  @override
  _FilmDhabaState createState() => _FilmDhabaState();
}

class _FilmDhabaState extends State<FilmDhaba> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListGenerator(channelID:filmDhabaChannelID,dbCollectionName:'filmDhabaChannel')
    );
  }
}