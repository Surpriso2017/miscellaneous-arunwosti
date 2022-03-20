import 'package:http_service/model/video/resolution.dart';

class Hit{
  int id;
  String pageURL;
  String type;
  String tag;
  num duration;
  int picture_id;
  Resolution videos;
  int views;
  int downloads;
  int likes;
  int comments;
  int user_id;
  String user;
  String userImageURL;


  Hit({
    required this.id,
    required this.pageURL,
    required this.type,
    required this.tag,
    required this.duration,
    required this.picture_id,
    required this.videos,
    required this.views,
    required this.downloads,
    required this.likes,
    required this.comments,
    required this.user_id,
    required this.user,
    required this.userImageURL
  });


  factory Hit.fromjson(Map json){
    return Hit(
      id: json['id'], 
      pageURL: json['pageURL'], 
      type: json['type'], 
      tag: json['tag'], 
      duration: json['duration'], 
      picture_id: json['picture_id'], 
      videos: Resolution.fromjason(json['videos']), 
      views: json['views'], 
      downloads: json['downloads'], 
      likes: json['likes'], 
      comments: json['comments'], 
      user_id: json['user_id'], 
      user: json['user'], 
      userImageURL: json['userImageURL']
      );
  }
}