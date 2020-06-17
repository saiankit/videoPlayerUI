import 'package:flutter/material.dart';
import 'package:videoPlayerUI/screens/videoPlayScreen.dart';

class VideoCard extends StatefulWidget {
  final String imageURL;
  final String videoName;
  final String videoID;
  VideoCard({this.imageURL,this.videoName,this.videoID});
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
              (context) => VideoPlayScreen(videoName:widget.videoName,videoID: widget.videoID,)
              ),
            );
      },
      child: Container(
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10.0,
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image : NetworkImage('${widget.imageURL}'),
                        fit: BoxFit.fill
                        ),
                    ),
                    child: Container(
                      height: 220.0,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
                children:[
                    Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Stack(
                        children:[
                        Container(
                          height: 70.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0)
                              ),
                            ),
                            padding: EdgeInsets.only(left:10.0,right: 10.0),
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // DescriptionTextWidget(text: widget.videoName,),
                          Expanded(child: Text(widget.videoName,style: TextStyle(fontSize: 18.0),)),
                        ],
                        ),
                        ),
                        ])
                    ],
                  ),
                  ]
                ),
          ],
        ),
      ),
    );
  }
}