import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayScreen extends StatefulWidget {
  final String videoID;
  VideoPlayScreen({this.videoID});
  @override
  _VideoPlayScreenState createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=${widget.videoID}")
      );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Center(child: Container(child: YoutubePlayer(controller: _controller,),),),
    );
  }
}