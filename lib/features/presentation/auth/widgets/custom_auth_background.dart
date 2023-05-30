import 'dart:math';

import 'package:flutter/material.dart';

class CustomShape extends CustomPainter {
  const CustomShape({required this.shadow});
  final BoxShadow shadow;
  @override
  void paint(Canvas canvas, Size size) {
    //Measurements
    final width = size.width;
    final height = size.height;
    final topLeft = height * 0.641;
    final topRight = height * 0.439;
    const radius = 28.0;
    final bottomLeft = height * 0.31;
    final bottomRight = height * 0.51;

    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3
      ..style = PaintingStyle.fill;

    final topPath = Path()
      ..moveTo(0, 0)
      ..addRRect(
        RRect.fromRectAndCorners(
          Rect.fromPoints(
            const Offset(0, 0),
            Offset(width, topRight),
          ),
          topLeft: const Radius.circular(radius),
          topRight: const Radius.circular(radius),
        ),
      )
      ..moveTo(0, topLeft)
      ..lineTo(0, topRight)
      ..lineTo(width, topRight)
      ..arcTo(
        Rect.fromCircle(
          center: Offset(width - radius, topRight),
          radius: radius,
        ),
        0,
        pi / 3,
        false,
      )
      ..lineTo(0, topLeft);

    final bottomPath = Path()
      ..addRRect(
        RRect.fromRectAndCorners(
          Rect.fromPoints(
            Offset(0, height),
            Offset(width, height - bottomLeft),
          ),
          bottomLeft: const Radius.circular(radius),
          bottomRight: const Radius.circular(radius),
        ),
      )
      ..moveTo(width, height - bottomRight)
      ..lineTo(width, height - bottomLeft)
      ..lineTo(0, height - bottomLeft)
      ..arcTo(
        Rect.fromCircle(
          center: Offset(radius, height - bottomLeft),
          radius: radius,
        ),
        pi,
        pi / 2.8,
        false,
      )
      ..lineTo(width, height - bottomRight);

    // Apply shadows

    final bottomShadowPath = bottomPath.shift(shadow.offset);
    final topShadowPath = topPath.shift(shadow.offset);

    //Draw shadows
    canvas.drawPath(topShadowPath, shadow.toPaint());
    canvas.drawPath(bottomShadowPath, shadow.toPaint());

    //Draw shapes
    canvas.drawPath(topPath, paint);
    canvas.drawPath(bottomPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
