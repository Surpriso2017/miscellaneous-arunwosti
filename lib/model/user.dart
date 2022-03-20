import 'package:http_service/model/adress.dart';

import 'company.dart';

class User{
  String id;
  String name;
  String username;
  String email;
  String phone;
  String website;
  Address address;
  Company company;


  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
    required this.address,
    required this.company
  });

  factory User.convertFromJson(Map json){
    return User
    (id: json['id'], 
    name: json['name'], 
    username: json['username'], 
    email: json['email'], 
    phone: json['phone'], 
    website: json['website'],
    address: Address.fromjson(json['address']), 
    company: Company.fromjson(json['company'])
    );
  }


}