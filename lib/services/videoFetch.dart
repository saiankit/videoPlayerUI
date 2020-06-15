import 'dart:async';
import 'dart:convert';
import '../utilities/keys.dart';
import 'package:http/http.dart' as http;
import '../models/video_model.dart';

var apiURL = 'https://www.googleapis.com/youtube/v3/search?key=$authKey&channelId=$channelID&part=snippet,id&order=date&maxResults=100';
Future<List<Video>> fetchAlbum() async {
  final response = await http.get(apiURL);
  var jsonData = json.decode(response.body);
  List<Video> videoList =[];
  var modifiedData = jsonData['items'];
  for (var v in modifiedData ) {
    Video video = Video(videoID:v['id']['videoId'],thumbnail:v['snippet']['thumbnails']['high']['url'],title:v['snippet']['title']);
    videoList.add(video);
  }
  return videoList;
  // print(videoList.length);
}