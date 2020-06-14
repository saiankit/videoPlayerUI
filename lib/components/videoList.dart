import 'package:flutter/material.dart';
import '../widgets/videoCard.dart';
class VideoList extends StatefulWidget {
  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          
          VideoCard(imageURL:1,videoName: 'Fibonacci Series is the best',videoTime: '3:30',),
          VideoCard(imageURL:2,videoName: 'Best Villa in the World',videoTime: '3:30',),
          VideoCard(imageURL:3,videoName: 'Paris at it best',videoTime: '3:30',),
          VideoCard(imageURL:4,videoName: '1',videoTime: '3:30',),
          VideoCard(imageURL:5,videoName: '1',videoTime: '3:30',),
          VideoCard(imageURL:6,videoName: '1',videoTime: '3:30',),
          VideoCard(imageURL:7,videoName: '1',videoTime: '3:30',)
        ],
      ),
    );
  }
}