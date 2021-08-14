import 'dart:math';

import 'package:flutter/material.dart';

class SquarePaint extends StatefulWidget {
  const SquarePaint({Key? key}) : super(key: key);

  @override
  SquarePaintState createState() => SquarePaintState();
}

class SquarePaintState extends State<SquarePaint> {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 3.5,
      child: Container(
        margin: const EdgeInsets.only(left: 200),
        height: 300,
        width: 300,
        child: CustomPaint(
          painter: _CustomSquare(),
        ),
      ),
    );
  }
}

class _CustomSquare extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var height = size.height;
    var width = size.width;
    var center = Offset(height / 2, width / 2);

    var squareBrush = Paint()
      ..color = Colors.yellow.withOpacity(0.7)
      ..style = PaintingStyle.fill;

    canvas.drawRect(
        Rect.fromCenter(center: center, width: width, height: height),
        squareBrush);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
