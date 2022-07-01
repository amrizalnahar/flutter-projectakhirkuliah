import 'package:flutter/material.dart';
import 'package:mampir_foto/models/User.dart';

class TravelSpot {
  final String name, image, harga;
  // final DateTime date;
  final List<User> users;

  TravelSpot({
    @required this.users,
    @required this.name,
    @required this.image,
    // @required this.date,
    @required this.harga,
  });
}

List<TravelSpot> travelSpots = [
  TravelSpot(
    users: users..shuffle(),
    name: "Paket Wedding",
    image: "assets/images/Red_Mountains.jpg",
    harga: "Rp. 1.8K",
    // date: DateTime(2020, 10, 15),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Paket PreWedding",
    image: "assets/images/Red_Mountains2.jpg",
    harga: "Rp. 1K",
    // date: DateTime(2020, 3, 10),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Paket Dokumentasi",
    image: "assets/images/Red_Mountains3.jpg",
    harga: "Rp. 500K",
    // date: DateTime(2020, 10, 15),
  ),
];

List<User> users = [user1, user2, user3];
