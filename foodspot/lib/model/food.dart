import 'package:flutter/material.dart';

class Food {
  final String title;
  final double price;
  final String description;
  final String imageUrl;

  Food(
      {required this.title,
      required this.price,
      required this.description,
      required this.imageUrl});
}
