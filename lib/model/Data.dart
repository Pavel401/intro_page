import 'package:flutter/material.dart';

class Items {
  final String title;
  final String subtitle;
  final String image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
//final String background;
  Items({
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
    required this.image,
   // required this.background,
  });
}