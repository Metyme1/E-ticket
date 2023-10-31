import 'package:flutter/material.dart';
class CurvedBannerContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Widget child;

  const CurvedBannerContainer({
    required this.width,
    required this.height,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: CurvedBannerPainter(color),
      child: SizedBox(
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}
class CurvedBannerPainter extends CustomPainter {
  final Color color;

  CurvedBannerPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path = Path();

    final curveHeight = size.height / 4;

    path.moveTo(0, size.height);
    path.quadraticBezierTo(
      size.width / 2,
      size.height - curveHeight,
      size.width,
      size.height,
    );
    path.lineTo(size.width, curveHeight); // Adjusted to curve only the top
    path.quadraticBezierTo(
      size.width / 2,
      0,
      0,
      curveHeight,
    );
    path.close();

    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}