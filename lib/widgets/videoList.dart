import 'package:videoPlayerUI/services/videoFetch.dart';
import 'package:videoPlayerUI/widgets/videoCard.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ListGenerator extends StatefulWidget {
  final String channelID;
  final String dbCollectionName;
  ListGenerator({this.channelID,this.dbCollectionName});
  
  @override
  _ListGeneratorState createState() => _ListGeneratorState();
}

class _ListGeneratorState extends State<ListGenerator> {
  
  @override
  void initState() {
    if(widget.dbCollectionName == 'devotionalChannel'|| widget.dbCollectionName == 'filmDhaba' ) {
    VideoFetch(channelID: widget.channelID,dbCollectionName: widget.dbCollectionName).fetchVideos();
    VideoFetch(channelID: widget.channelID,dbCollectionName: widget.dbCollectionName).completeFetch();
    }
    else {
      VideoFetch(channelID: widget.channelID,dbCollectionName: widget.dbCollectionName).completeFetch();
    }
    super.initState();
  }
  final _firestore = Firestore.instance;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          height:MediaQuery.of(context).size.height,
          child: StreamBuilder(
                stream: _firestore.collection(widget.dbCollectionName)
                                  .orderBy('timestamp', descending: true)
                                  .snapshots(),
                builder: (context,snapshot){
                  if(!snapshot.hasData) return Center(child: CircularProgressIndicator());
                  return ListView.builder(
                    itemCount: snapshot.data.documents.length,
                    itemBuilder: (BuildContext context, int index) {
                      return VideoCard(
                        imageURL: snapshot.data.documents[index]['thumbnail'],
                        videoID: snapshot.data.documents[index]['videoID'],
                        videoName: snapshot.data.documents[index]['title'],
                );
              }
            );
          },
        )
      ),
    );
  }
}