import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String secondtitle;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.secondtitle,
    @required this.description,
  });
}

final slideList = [
  Slide(
      imageUrl: 'assets/10.jpg',
      title: 'Get Delivered Fastly',
      secondtitle: 'Track Your Food',
      description:
          'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface.'),
  Slide(
      imageUrl: 'assets/11.jpg',
      title: 'Order Food Online',
      secondtitle: 'Faster & Easier',
      description:
          'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface.'),
];
