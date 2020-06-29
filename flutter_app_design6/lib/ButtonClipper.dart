import 'package:flutter/material.dart';

class OnBoardingButtonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    path.close();
    return path;

  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}