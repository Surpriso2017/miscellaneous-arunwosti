class Address{
  String street, suite, city, zipcode;
  Geo geo;

  Address({
required  this.street,
required  this.suite,
required  this.city,
required  this.zipcode,
required  this.geo,
  });

  factory Address.fromjson(Map json){
    final _convertedgeo = Geo.fromjson(json['geo']);
    return Address(
      street: json['street'],
       suite: json['suite'],
       city: json['city'], 
       zipcode: json['zipcode'], 
       geo: _convertedgeo,
    );
  }

}

class Geo{
  String latitude, longitude;

  Geo({required this.latitude, required this.longitude});

  factory Geo.fromjson(Map json){
    return Geo(
      latitude: json['lat'], 
      longitude: json['lng']
      );
  }
}