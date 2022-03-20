/*--------------------------------------------------------------------------------------------------------------------------------
=========================================    Class  ================================================================
---------------------------------------------------------------------------------------------------------------------------------*/
class Size{
  String url;
  num height;
  num width;
  num size;

  Size({
    required this.url,
    required this.width,
    required this.height,
    required this.size
  });

  factory Size.fromjson(Map json){
    return Size
    (url: json['url'],
     width: json['width'], 
     height: json['height'], 
     size: json['size']
     );
  }
}

/*
/*--------------------------------------------------------------------------------------------------------------------------------
=========================================   Medium Class  ================================================================
---------------------------------------------------------------------------------------------------------------------------------*/

class Medium{
  String url;
  num height;
  num width;
  num size;

  Medium({
    required this.url,
    required this.width,
    required this.height,
    required this.size
  });

  factory Medium.fromjson(Map json){
    return Medium
    (url: json['url'],
     width: json['width'], 
     height: json['height'], 
     size: json['size']
     );
  }
}


/*--------------------------------------------------------------------------------------------------------------------------------
=========================================   small Class ================================================================
---------------------------------------------------------------------------------------------------------------------------------*/

class Small{
  String url;
  num height;
  num width;
  num size;

  Small({
    required this.url,
    required this.width,
    required this.height,
    required this.size
  });

  factory Small.fromjson(Map json){
    return Small
    (url: json['url'],
     width: json['width'], 
     height: json['height'], 
     size: json['size']
     );
  }
}


/*--------------------------------------------------------------------------------------------------------------------------------
=========================================   Tiny  Class    ================================================================
---------------------------------------------------------------------------------------------------------------------------------*/

class Tiny{
  String url;
  num height;
  num width;
  num size;

  Tiny({
    required this.url,
    required this.width,
    required this.height,
    required this.size
  });

  factory Tiny.fromjson(Map json){
    return Tiny
    (url: json['url'],
     width: json['width'], 
     height: json['height'], 
     size: json['size']
     );
  }
}
*/