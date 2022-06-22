import 'package:flutter/material.dart';

class Fooddetail {
  final String id;
  final String image;
  final String title;
  final double price;
  final String detail;

  Fooddetail(
      {required this.id,
      required this.image,
      required this.title,
      required this.price,
      required this.detail});
}
