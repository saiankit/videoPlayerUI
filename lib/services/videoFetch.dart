import 'dart:async';
import 'dart:convert';
import 'dart:io';
import '../utilities/keys.dart';
import 'package:http/http.dart' as http;
import '../models/video_model.dart';

var apiURL = 'https://www.googleapis.com/youtube/v3/search?key=$authKey&channelId=$mainChannelID&part=snippet,id&order=date&maxResults=20';
Future<List<Video>> fetchAlbum() async {
  var jsonData;
  try{
  final response = await http.get(apiURL);
  jsonData = json.decode(response.body);
  } on SocketException {
     print('No internet Connection');
  }
  print(jsonData);
  List<Video> videoList =[];
  var modifiedData = jsonData['items'];
  for (var v in modifiedData ) {
    Video video = Video(videoID:v['id']['videoId'],thumbnail:v['snippet']['thumbnails']['high']['url'],title:v['snippet']['title']);
    videoList.add(video);
  }
  return videoList;
}