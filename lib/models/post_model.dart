
import 'package:flutter/cupertino.dart';

class PostModel{
  final String text;
  final List <String>? image;
  final String pImage;
  final String name;
  final String time;
  final IconData icon;
  final String likes;
  final String comments;
  final String shares;

  PostModel({required this.text,
    this.image,
    required this.pImage,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.name,
    required this.time,
    required this.icon});

}