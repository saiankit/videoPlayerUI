import 'package:flutter/material.dart';
import 'package:videoPlayerUI/screens/videoPlayScreen.dart';

class VideoCard extends StatefulWidget {
  final int imageURL;
  final String videoName;
  final String videoTime;
  VideoCard({this.imageURL,this.videoName,this.videoTime});
  _VideoCardState createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: 
              (context) => VideoPlayScreen(videoName:widget.videoName,imageURL:widget.imageURL)
              ),
            );
      },
          child: Container(
        height: 225.0,
        child: Card(
          color: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image : AssetImage('assets/images/${widget.imageURL}.jpg'),
                fit: BoxFit.fill
                ),
            ),
            child: Stack(
            children:[
                Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Stack(
                    children:[
                    Container(
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0)
                          ),
                        ),
                        padding: EdgeInsets.only(left:10.0,right: 10.0),
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(widget.videoName,style: TextStyle(fontSize: 20.0),),
                      Text(widget.videoTime,style: TextStyle(fontSize: 25.0),)
                    ],
                    ),
                    ),
                    ])
                ],
              ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}