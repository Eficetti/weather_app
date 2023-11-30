import 'package:flutter/material.dart';

class WeatherLocationBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 2, size.height);
    // path.moveTo(size.width, size.height * 0.50);
    
    path.close();
    return path;
  }

  @override
  bool shouldReclip(WeatherLocationBackgroundClipper oldClipper) => false;
}
