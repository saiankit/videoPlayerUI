import 'package:videoPlayerUI/widgets/videoCard.dart';

import '../services/videoFetch.dart';
import 'package:flutter/material.dart';
import '../models/video_model.dart';

class Politics extends StatefulWidget {
  Politics({Key key}) : super(key: key);
  @override
  _PoliticsState createState() => _PoliticsState();
}

class _PoliticsState extends State<Politics> {
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
            child: Container(
              child: FutureBuilder(
                future: fetchAlbum(),
                builder: (BuildContext context, AsyncSnapshot snapshot){
                  if(snapshot.data == null){
                    return Container(
                      child:Text('Loading...')
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
    );
  }
}