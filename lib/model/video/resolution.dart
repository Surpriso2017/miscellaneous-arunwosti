import 'package:http_service/model/video/large.dart';

class Resolution{
  Size large;
 Size medium;
  Size small;
  Size tiny;


  Resolution({
    required this.large,
    required this.medium,
    required this.small,
    required this.tiny
  });


  factory Resolution.fromjason(Map json){
    return Resolution
    (
      large: Size.fromjson(json['large']), 
      medium: Size.fromjson(json['medium']), 
      small: Size.fromjson(json['small']), 
      tiny: Size.fromjson(json['tiny'])
      );
  }
}