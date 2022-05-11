import 'package:flutter/material.dart';

class User {
  final String name;
  final String address;
  final int age;

  final String image;

  final String description;

  User(this.name, this.address, this.age, this.image, this.description);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        address = json['address'],
        age = json['age'],
        image = json['image'],
        description = json['description'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address,
        'age': age,
        'image': image,
        'description': description,
      };
}
