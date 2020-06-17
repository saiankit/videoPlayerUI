import 'package:flutter/material.dart';
import 'package:videoPlayerUI/screens/videoPlayScreen.dart';
import 'package:videoPlayerUI/utilities/theme_style.dart';

class VideoInfo extends StatefulWidget {
final String thumbnail;
  final String title;
  final String description;
  final String videoID;
  VideoInfo({this.thumbnail,this.title,this.description,this.videoID});
  @override
  _VideoInfoState createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20.0,),
          ThemeStyle.logo,
          SizedBox(height: 20.0,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image : NetworkImage(widget.thumbnail),
                fit: BoxFit.fill
                ),
            ),
            child: Container(
              height: 220.0,
            ),
          ),
          SizedBox(height: 20.0,),
          Text(widget.title),
          Text(widget.description),
          IconButton(
              icon: Icon(
              Icons.play_circle_filled,
              size: 100.0,
              color: Colors.red,
              ),
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder: 
                  (context) => VideoPlayScreen(videoID: widget.videoID)
                ),
              );
              },
            ),
          
        ],
      )
    );
  }
}