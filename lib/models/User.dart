import 'package:flutter/material.dart';

class User {
  final String name, image;

  User({@required this.name, @required this.image});
}

// Demo List of Top Travelers
List<User> topTravelers = [user1, user2, user3, user4];

// demo user
User user1 = User(name: "James", image: "assets/images/Onlinemarketing.png");
User user2 = User(name: "John", image: "assets/images/Onlinepurchase.png");
User user3 = User(name: "Marry", image: "assets/images/Onlinemarketing.png");
User user4 = User(name: "Rosy", image: "assets/images/Onlinepurchase.png");
