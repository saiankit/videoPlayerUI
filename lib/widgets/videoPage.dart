import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:videoPlayerUI/widgets/videoInfo.dart';


class VideoPageGenerator extends StatefulWidget {
  final String videoID;
  final String dbCollectionName;
  VideoPageGenerator({this.videoID,this.dbCollectionName});
  @override
  _VideoPageGeneratorState createState() => _VideoPageGeneratorState();
}

class _VideoPageGeneratorState extends State<VideoPageGenerator> {

  final _firestore = Firestore.instance;
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child : StreamBuilder(
            stream: _firestore.collection(widget.dbCollectionName)
                              .where('videoID', isEqualTo: widget.videoID)
                              .snapshots(),
            builder: (context,snapshot) {
               if(!snapshot.hasData) return Center(child: CircularProgressIndicator());
                  return Container(
                    child: Center(
                      child: VideoInfo(
                         thumbnail: snapshot.data.documents[0]['thumbnail'],
                         title: snapshot.data.documents[0]['title'],
                         description: snapshot.data.documents[0]['description'],
                         videoID: snapshot.data.documents[0]['videoID'],
                      )
                    ),
                  );
            },
          )
        ),
      ),
    );
  }
}
