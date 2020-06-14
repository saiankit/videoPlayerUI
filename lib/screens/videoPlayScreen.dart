import 'package:flutter/material.dart';

class VideoPlayScreen extends StatefulWidget {
  final String videoName;
  final int imageURL;
  VideoPlayScreen({this.videoName,this.imageURL});
  @override
  _VideoPlayScreenState createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Container(
        decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image : AssetImage('assets/images/${widget.imageURL}.jpg'),
                  fit: BoxFit.fill
                  ),
              ),
        child: Text(widget.videoName),
      ),
    );
  }
}