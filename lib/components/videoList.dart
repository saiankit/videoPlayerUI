import 'package:videoPlayerUI/widgets/videoCard.dart';
import '../services/videoFetch.dart';
import 'package:flutter/material.dart';
import '../models/video_model.dart';

class VideoList extends StatefulWidget {
  VideoList({Key key}) : super(key: key);
  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  Future<List<Video>> futureAlbum;
  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
          child: Center(
            child: Expanded(
              child: Container(
                height:750.0,
                child: FutureBuilder(
                  future: fetchAlbum(),
                  builder: (BuildContext context, AsyncSnapshot snapshot){
                    if(snapshot.data == null){
                      return Center(
                        child: Container(
                          child:CircularProgressIndicator()
                        ),
                      );
                    }else{
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return VideoCard(imageURL:snapshot.data[index].thumbnail,videoID:snapshot.data[index].videoID,videoName:snapshot.data[index].title);
                      }
                    );}
                  },
                )
        ),
            ),
      ),
    );
  }
}