import 'dart:async';
import 'dart:convert';
import 'dart:io';
import '../utilities/keys.dart';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
class VideoFetch {
final String channelID;
final String dbCollectionName;
VideoFetch({this.channelID,this.dbCollectionName});
var _firestore = Firestore.instance;
Future fetchVideos() async {
  var apiURL = 'https://www.googleapis.com/youtube/v3/search?key=$authKey&channelId=$channelID&part=snippet,id&order=date&maxResults=20';
  var jsonData;
  try{
  final response = await http.get(apiURL);
  jsonData = json.decode(response.body);
  } on SocketException {
     print('No internet Connection');
  }
  var modifiedData = jsonData['items'];
  for (var v in modifiedData ) {
    var videoID = v['id']['videoId'];
    var thumbnail = v['snippet']['thumbnails']['high']['url'];
    var title = v['snippet']['title'];
    var description = v['snippet']['description'];
    var timestamp = v['snippet']['publishTime'];
    _firestore.collection(dbCollectionName)
              .where('videoID', isEqualTo: videoID)
              .getDocuments()
              .then((QuerySnapshot docs){
                if(docs.documents.isEmpty){
                  _firestore.collection(dbCollectionName).add(
                    {
                      'videoID' : videoID,
                      'thumbnail' : thumbnail,
                      'timestamp' :timestamp,
                      'title' : title,
                      'description' : description
                    }
                  );
                }
              }
            );
          }
        return null;
      }
  }