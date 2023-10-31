import 'dart:ui';

import 'package:flutter/cupertino.dart';


class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final curveHeight = 30.0;

    path.moveTo(0, curveHeight);
    path.quadraticBezierTo(
      size.width / 2, 0,
      size.width, curveHeight,
    );
    path.lineTo(size.width, size.height - curveHeight);
    path.quadraticBezierTo(
      size.width / 2, size.height,
      0, size.height - curveHeight,
    );
    path.lineTo(0, curveHeight); // Add this line to complete the shape
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CurvedClipper oldClipper) => false;
}


