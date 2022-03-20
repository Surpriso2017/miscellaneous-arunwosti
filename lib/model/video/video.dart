import 'package:http_service/model/video/hits.dart';

class Video{
  int total;
  int totalhits;
  List<Hit> hits;

  Video({
    required this.total,
    required this.totalhits,
    required this.hits
  });

  factory Video.convertFromJson(Map json){
    return Video(
      total: json['total'], 
      totalhits: json['totalhits'], 
      hits:  (json['hits'] as List). map((item)=>Hit.fromjson(item)).toList()
      );
  }
}