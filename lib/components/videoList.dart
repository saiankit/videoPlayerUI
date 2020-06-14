import 'package:flutter/material.dart';
import '../widgets/videoCard.dart';
class VideoList extends StatefulWidget {
  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          
          VideoCard(imageURL:1,videoName: 'Must Watch: COVID-19 Survivor Explains His Medication | Coronavirus Survivor Daily Routine | GNN TV',videoID:'uFoMtA3s9hU'),
          VideoCard(imageURL:2,videoName: 'Mashup Princess Satya Yamini Musical Fun | Singer Satya Yamini Latest Songs | GNN TV Telugu',videoID:'YwAlIg0qWNc'),
          VideoCard(imageURL:3,videoName: 'Jr NTR Inspirational Words About Win and Lose | Jr NTR as Brand Ambassador for IPL 2018 | E3 Talkies',videoID:'y2sb0vH_R2U'),
          VideoCard(imageURL:4,videoName: 'SATC Live From Living Room | GNN TV TELUGU',videoID:'8xp2zSzOkSU'),
          VideoCard(imageURL:5,videoName: 'RGV about Balakrishna, Chiranjeevi and Mia Malkova - TV9',videoID:'5vBkD4eBa7k'),
          VideoCard(imageURL:6,videoName: 'No one taking care: Corona Patient Emotional Video from Gandhi Hospital | V6',videoID:'jCwjCBVlBAE'),
          VideoCard(imageURL:7,videoName: 'Indo-Nepal Border Open Firing: PM Modi Strategic Silence Over India Nepal Border Tensions? | GNN TV',videoID:'esS9aidx-K8')
        ],
      ),
    );
  }
}