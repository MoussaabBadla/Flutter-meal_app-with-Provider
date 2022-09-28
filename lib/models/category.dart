import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final String Icon;
  final String Image;
  //final String Image;

  const Category(
      {
        required this.Image,
    required this.Icon,
    required this.id,
    required this.title,
    this.color = const Color(0xFFe5383b),
  });
}
