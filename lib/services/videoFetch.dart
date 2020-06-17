import 'dart:async';
import 'dart:convert';
import 'dart:io';

import '../utilities/keys.dart';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cron/cron.dart';
var cron = new Cron();
class VideoFetch {
final String channelID;
final String dbCollectionName;
VideoFetch({this.channelID,this.dbCollectionName});
var _firestore = Firestore.instance;
Future completeFetch() async{
  var nextPageToken = '';
  for(var i = 1;i < 100 ; i++)
  {
  var apiURL = 'https://www.googleapis.com/youtube/v3/search?key=$authKey&channelId=$channelID&part=snippet,id&order=date&maxResults=50&pageToken=$nextPageToken';
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
   await _firestore.collection(dbCollectionName)
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
  nextPageToken = jsonData['nextPageToken'];
 var len =  _firestore.collection(dbCollectionName).getDocuments().then((QuerySnapshot docs) => 
  docs.documents.length
  );
  print(len.toString());
  }
  
}
Future fetchVideos() async {
  cron.schedule(new Schedule.parse('*/360 * * * *'), () async {
  // print('LOL');
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
   await _firestore.collection(dbCollectionName)
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
  });
}
}